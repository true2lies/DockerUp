from flask import Flask, render_template

app = Flask(__name__)


@app.route('/')
def index():
    name = "Arun"
    msg = "Hello from Arun"
    return render_template('index.html', name=name, msg=msg)


if __name__ == '__main__':
    app.run(debug=True)
