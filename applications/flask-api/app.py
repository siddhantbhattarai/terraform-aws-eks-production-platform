import os
from flask import Flask, jsonify

app = Flask(__name__)

@app.get("/healthz")
def health():
    return {"status": "healthy", "service": "flask-api"}

@app.get("/api/message")
def message():
    return jsonify(message=os.getenv("MESSAGE", "Hello from Flask on Amazon EKS"))
