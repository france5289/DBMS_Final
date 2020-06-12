from flask import Flask
from flask import redirect, url_for
from flask import render_template
from markupsafe import escape
from flask_mysqldb import MySQL
from flask import request
app = Flask(__name__)
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'kychen'
app.config['MYSQL_PASSWORD'] = 'Danielchen@27'
app.config['MYSQL_DB'] = 'MovieForum'

mysql = MySQL(app)

@app.route('/', methods=['GET'])
def index():
    return redirect(url_for('home'))
@app.route('/home', methods=['GET'])
def home():
    '''
    Render home page of Movie Forum
    Home page should present the following information of first eight movie : 
    {Movie Name, Rating, Tomato_score, IMDB_score, Movie Image}
    '''
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM Movie')
    result = cur.fetchall()
    movie_dict1 = dict() 
    movie_dict2 = dict() 
    movie_dict3 = dict() 
    try:
        for item in result[:4]:
            movie_dict1[item[0]] = item[-1]
        for item in result[4:8]:
            movie_dict2[item[0]] = item[-1]
        for item in result[8:12]:
            movie_dict3[item[0]] = item[-1]
    except IndexError as e:
        print(e)
        print('No data in Movie table')
    return render_template('w3_food_template.html', movie_list1=movie_dict1, movie_list2=movie_dict2, movie_list3=movie_dict3)

@app.route('/movie_manager', methods=['GET'])
def movie_manager():
    '''
    Render movie manager page
    it should provide a GUI to search any movie information
    '''
    return render_template('movie_manager.html')

@app.route('/Searcher', methods=['POST'])
def searcher():
    '''
    Recieve user search keyword from homepage
    and display results
    '''
    cur = mysql.connection.cursor()
    search_type = request.form['search_type']
    key = request.form['keywords']
    print(key)
    try:
        if search_type == 'Movie_Name':
            cur.execute(f"SELECT * FROM Movie WHERE Movie_Name='{key}'")
            result = cur.fetchone()
            movie_info = {'MName':result[0], 'Rating':result[1], 'Tomato':result[2],
                        'IMDB':result[3], 'BOX':result[4], 'img':result[-1]}
            cur.execute(f"SELECT count(Dislike.user_id) FROM Movie, Dislike WHERE Movie.Movie_name = Dislike.Mname and Movie.Movie_name='{key}'GROUP BY Movie.Movie_name")
            dislike_count = cur.fetchone()
            if dislike_count is not None:
                dislike_count = dislike_count[0]
            else:
                dislike_count = 0
            cur.execute(f"SELECT count(Love.user_id) FROM Movie, Love WHERE Movie.Movie_name = Love.Mname and Movie.Movie_name='{key}' GROUP BY Movie.Movie_name")
            love_count = cur.fetchone()
            if love_count is not None:
                love_count = love_count[0]
            else:
                love_count = 0
            cur.execute(f"SELECT Available.PNAME FROM Movie, Available WHERE Movie.Movie_name = Available.Mname and Movie.Movie_name='{key}'")
            platforms = cur.fetchall()
            plats = []
            for item in platforms:
                plats.append(item[0])
            cur.execute(f"SELECT Produced.ProdName, Produced.DNAME FROM Movie, Produced WHERE Movie.Movie_name = Produced.MNAME and Movie.Movie_name='{key}'")
            prod = cur.fetchall()
            producer = prod[0][0]
            director = prod[0][1]
            return render_template('movie_result.html', result=movie_info, ndlike=dislike_count, lcount=love_count, plats=plats, producer=producer, director=director)
        else:
            raise ValueError('Invalid Search Type! (From searcher())')
    except Exception as e:
        print(e)
        return render_template('not_found.html')