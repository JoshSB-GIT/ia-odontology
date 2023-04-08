from flask import Flask, jsonify
from routes.usersRoutes import users
from routes.authRoutes import auth
from routes.chatBotRoutes import chatbot
from flask_mysqldb import MySQL
from flask_cors import CORS, cross_origin

app = Flask(__name__)
MySQL(app)
CORS(app)


app.register_blueprint(users)
app.register_blueprint(auth)
app.register_blueprint(chatbot)

@cross_origin
@app.route('/')
def home():
    return jsonify({'message': '¡Welcome!'})
