from flask import Flask, jsonify
import requests
import numpy

app = Flask(__name__)

@app.route("/")
def hello():
    return jsonify({
        "message": "Hello, World!",
        "python": "3.7",
        "framework": "Flask"
    })

@app.route("/health")
def health():
    return jsonify({"status": "ok"})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
