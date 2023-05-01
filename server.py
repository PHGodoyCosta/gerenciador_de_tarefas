from flask import Flask, render_template
from db import ConnectionDb

app = Flask(__name__)

@app.route("/")
def home():
    render_template("templates/index.html")

if __name__ == "__main__":
    app.run()