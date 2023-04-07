from flask import Flask, jsonify
from routes.usersRoutes import users
from routes.authRoutes import auth
from routes.chatBotRoutes import chatbot
from flask_mysqldb import MySQL

app = Flask(__name__)
MySQL(app)


app.register_blueprint(users)
app.register_blueprint(auth)
app.register_blueprint(chatbot)


@app.route('/')
def home():
    return jsonify({'message': '¡Welcome!'})
