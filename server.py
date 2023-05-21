from flask import Flask, render_template
from db import ConnectionDb

app = Flask(__name__)

connection = ConnectionDb()

@app.route("/")
def home():
    
    return render_template("index.html")

if __name__ == "__main__":
    app.run()