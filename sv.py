# server.py
from flask import Flask, request
import os

app = Flask(__name__)
UPLOAD_DIR = "./received"
os.makedirs(UPLOAD_DIR, exist_ok=True)

@app.route("/upload", methods=["POST"])
def upload():
    # multipart/form-data で送られてくる前提
    if "file" not in request.files:
        return "file field missing", 400
    f = request.files["file"]
    save_path = os.path.join(UPLOAD_DIR, f.filename)
    f.save(save_path)
    return f"saved to {save_path}", 200

if __name__ == "__main__":
    app.run(port=5000)
