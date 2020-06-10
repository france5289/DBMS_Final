from flask import Flask
from flask import redirect, url_for
from flask import render_template
from markupsafe import escape
app = Flask(__name__)

@app.route('/')
def index():
    return redirect(url_for('home'))
@app.route('/home')
def home():
    return render_template('w3_food_template.html')