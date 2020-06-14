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
    mysql.connection.commit()
    cur.close()
    return render_template('home.html', movie_list1=movie_dict1, movie_list2=movie_dict2, movie_list3=movie_dict3)

@app.route('/data_manager', methods=['GET'])
def data_manager():
    '''
    Render data manager page
    '''
    return render_template('data_manager.html')

@app.route('/sql_playground', methods=['GET', 'POST'])
def sql_playground():
    '''
    handle sql INSERT UPDATE DELETE
    '''
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM Movie')
    result = cur.fetchall()
    movies = []
    for item in result:
        movies.append(list(item))
    mysql.connection.commit()
    cur.close()
    return render_template('sql_playground.html', data=movies)

@app.route('/sql_query', methods=['POST'])
def sql_query():
    '''
    handle sql query
    '''
    cur = mysql.connection.cursor()
    query = request.form['SQL']
    print(query)
    cur.execute(f"{query}")
    mysql.connection.commit()
    cur.close()
    return sql_playground()

@app.route('/movie_manager_GUI', methods=['GET','POST'])
def movie_manager_GUI():
    '''
    Render Movie entity manager GUI
    '''
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM Movie')
    result = cur.fetchall()
    movies = []
    for item in result:
        movies.append(list(item))
    mysql.connection.commit()
    cur.close()
    return render_template('movie_manager_GUI.html', data=movies)

@app.route('/insert_movie', methods=['GET','POST'])
def insert_movie():
    '''
    insert new data to movie table and render movie_magager_GUI.html
    '''
    cur = mysql.connection.cursor()
    try:
        pkey = request.form['Movie_Name']
        if request.form['Rating'] == '':
            var1 = 'NULL'
        else:
            var1 = request.form['Rating']

        if request.form['Tomato_score'] == '':
            var2 = 'NULL'
        else:
            var2 = request.form['Tomato_score']
        
        if request.form['IMDB_score'] == '':
            var3 = 'NULL'
        else:
            var3 = request.form['IMDB_score']
        
        if request.form['World_Box'] == '':
            var4 = 'NULL'
        else:
            var4 = request.form['World_Box']
        
        if request.form['movie_image'] == '':
            var5 = 'NULL'
        else:
            var5 = request.form['movie_image']
        
        cur.execute(f"INSERT INTO Movie VALUES ('{pkey}', '{var1}', {var2}, {var3}, {var4}, '{var5}')")
        mysql.connection.commit()
        cur.close()
        return movie_manager_GUI()
    except Exception as e:
        print(e)
        return render_template('not_found.html')

@app.route('/update_movie', methods=['POST'])
def update_movie():
    cur = mysql.connection.cursor()
    try:
        pkey = request.form['Movie_Name']
        if request.form['Rating'] == '':
            cur.execute(f"SELECT Rating FROM Movie WHERE Movie.Movie_Name='{pkey}'")
            var1 = cur.fetchone()[0]
        else:
            var1 = request.form['Rating']
        
        if request.form['Tomato_score'] == '':
            cur.execute(f"SELECT Tomato_score FROM Movie WHERE Movie.Movie_Name='{pkey}'")
            var2 = cur.fetchone()[0]
        else:
            var2 = request.form['Tomato_score']
        
        if request.form['IMDB_score'] == '':
            cur.execute(f"SELECT IMDB_score FROM Movie WHERE Movie.Movie_Name='{pkey}'")
            var3 = cur.fetchone()[0]
        else:
            var3 = request.form['IMDB_score']
        
        if request.form['World_Box'] == '':
            cur.execute(f"SELECT World_Box FROM Movie WHERE Movie.Movie_Name='{pkey}'")
            var4 = cur.fetchone()[0]
        else:
            var4 = request.form['World_Box']
        
        if request.form['movie_image'] == '':
            cur.execute(f"SELECT movie_image FROM Movie WHERE Movie.Movie_Name='{pkey}'")
            var5 = cur.fetchone()[0]
        else:
            var5 = request.form['movie_image']
        cur.execute(f"UPDATE Movie SET Rating='{var1}', Tomato_score={var2}, IMDB_score={var3}, World_Box = {var4}, movie_image = '{var5}' WHERE Movie.Movie_Name = '{pkey}'")
        mysql.connection.commit()
        cur.close()
        return movie_manager_GUI()
    
    except Exception as e:
        print(e)
        return render_template('not_found.html')


@app.route('/delete_movie', methods=['POST'])
def delete_movie():
    '''
    given movie name then delete it
    '''
    cur = mysql.connection.cursor()
    pkey = request.form['Movie_Name']
    cur.execute(f"DELETE FROM Movie WHERE Movie.Movie_Name = '{pkey}'")
    mysql.connection.commit()
    cur.close()
    return movie_manager_GUI()

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
            print(result)
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
            if len(prod) != 0:
                producer = prod[0][0]
                director = prod[0][1]
            else:
                producer = 'N/A'
                director = 'N/A'
            mysql.connection.commit()
            cur.close()
            return render_template('movie_result.html', result=movie_info, ndlike=dislike_count, lcount=love_count, plats=plats, producer=producer, director=director)
        elif search_type == 'UID':
            # get user basic info from User table
            cur.execute(f"SELECT * FROM User WHERE User.id='{key}'")
            result = cur.fetchone()
            user_info = {'id':result[0], 'BDate':result[1], 'Sex':result[-1]}
            # get user favorite music
            sub_query = f"SELECT * FROM User U, Love L WHERE U.id = L.user_id and M.Movie_Name = L.Mname and U.id = '{key}'"
            cur.execute(f"SELECT M.Movie_Name FROM Movie M WHERE EXISTS ({sub_query})")
            result = cur.fetchall()
            fav_movie = []
            for item in result:
                fav_movie.append(item[0])
            sub_query = f"SELECT * FROM User U, Dislike D WHERE U.id = D.user_id and M.Movie_Name = D.Mname and U.id = '{key}'"
            cur.execute(f"SELECT M.Movie_Name FROM Movie M WHERE EXISTS ({sub_query})")
            result = cur.fetchall()
            dislike_movie = []
            for item in result:
                dislike_movie.append(item[0])
            mysql.connection.commit()
            cur.close()
            return render_template('user_result.html', user=user_info, fav=fav_movie, dis=dislike_movie)
        else:
            raise ValueError('Invalid Search Type! (From searcher())')
    except Exception as e:
        print(e)
        return render_template('not_found.html')

@app.route('/Filter',methods=['POST'])
def filter():
    '''
    Show top imdb score movie , top rotten tomato movie and movie with at least 3 love count
    '''
    cur = mysql.connection.cursor()
    filter_type = request.form['Filter_type']
    try:
        if filter_type == 'First_IMDB':
            cur.execute("SELECT Movie_Name, IMDB_score, Tomato_score, Movie_image FROM Movie WHERE IMDB_score = ( SELECT MAX(IMDB_score) From Movie )")
            result = cur.fetchone()
            movie_info = {'MName':result[0], 'IMDB':result[1], 'Tomato':result[2], 'Img':result[3]}
            mysql.connection.commit()
            cur.close()
            return render_template('filter_result.html', movie=movie_info)
        elif filter_type == 'First_Tomato':
            cur.execute("SELECT Movie_Name, IMDB_score, Tomato_score, Movie_image FROM Movie WHERE Tomato_score = ( SELECT MAX(Tomato_score) From Movie )")
            result = cur.fetchone()
            movie_info = {'MName':result[0], 'IMDB':result[1], 'Tomato':result[2], 'Img':result[3]}
            mysql.connection.commit()
            cur.close()
            return render_template('filter_result.html', movie=movie_info)
        elif filter_type == 'Low_IMDB':
            cur.execute("SELECT Movie_Name, IMDB_score, Tomato_score, Movie_image FROM Movie WHERE IMDB_score = ( SELECT MIN(IMDB_score) From Movie )")
            result = cur.fetchone()
            movie_info = {'MName':result[0], 'IMDB':result[1], 'Tomato':result[2], 'Img':result[3]}
            mysql.connection.commit()
            cur.close()
            return render_template('filter_result.html', movie=movie_info)
        elif filter_type == 'Low_Tomato':
            cur.execute("SELECT Movie_Name, IMDB_score, Tomato_score, Movie_image FROM Movie WHERE Tomato_score = ( SELECT MIN(Tomato_score) From Movie )")
            result = cur.fetchone()
            movie_info = {'MName':result[0], 'IMDB':result[1], 'Tomato':result[2], 'Img':result[3]}
            mysql.connection.commit()
            cur.close()
            return render_template('filter_result.html', movie=movie_info)
        elif filter_type == 'Most_Rated':
            cur.execute("SELECT Movie_Name, Movie_image, count(Love.user_id) FROM Movie, Love WHERE Movie.Movie_name = Love.Mname GROUP BY Movie.Movie_name HAVING count(Love.user_id) > 2;")
            result = cur.fetchall()
            movie_list = []
            for item in result:
                movie_list.append({'Mname':item[0], 'img':item[1], 'count':item[2]})
            mysql.connection.commit()
            cur.close()
            return render_template('filter_result_user_rated.html', movies=movie_list)    
    except Exception as e:
        print(e)
        return render_template('not_found.html')



