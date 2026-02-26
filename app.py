from flask import Flask, jsonify
import requests
import numpy

app = Flask(__name__)

@app.route("/")
def hello():
    return """
    <!DOCTYPE html>
    <html>
        <head><title>Hello World</title></head>
        <body>
            <h1>Hello, World!</h1>
        </body>
    </html>
    """

@app.route("/health")
def health():
    return jsonify({"status": "ok"})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5200, debug=True)
