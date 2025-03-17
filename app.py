from flask import Flask, request

app = Flask(__name__)

@app.route("/", methods=["GET"])
def home():
    return "Hello, this is an HTTP/1.1 server on GCP!", 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
