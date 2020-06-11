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
    movie_dict1 = dict() # first four
    movie_dict2 = dict() # last four
    try:
        for item in result[:4]:
            movie_dict1[item[0]] = item[-1]
        for item in result[4:8]:
            movie_dict2[item[0]] = item[-1]
    except IndexError as e:
        print(e)
        print('No data in Movie table')
    return render_template('w3_food_template.html', movie_list1=movie_dict1, movie_list2=movie_dict2)

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
    search_type = request.form['search_type']
    if search_type == 'Movie_Name':
        pass
    elif search_type == 'Director_Name':
        raise NotImplementedError('Have not implemented Director info search')
    elif search_type == 'Production_Comp_Name':
        raise NotImplementedError('Have not implemented Production info search')
    elif search_type == 'UID':
        raise NotImplementedError('Have not implemented User info search')
    else:
        raise ValueError('Invalid Search Type! (From searcher())')

    return render_template()