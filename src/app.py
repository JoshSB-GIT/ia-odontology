from flask import Flask, jsonify
from routes.usersRoutes import users
from routes.authRoutes import auth
from routes.chatBotRoutes import chatbot
from routes.resumeRoutes import resume
from routes.emotionsRoutes import emotions
from flask_mysqldb import MySQL
from flask_cors import CORS, cross_origin

app = Flask(__name__)
MySQL(app)
CORS(app)


app.register_blueprint(users)
app.register_blueprint(auth)
app.register_blueprint(chatbot)
app.register_blueprint(resume)
app.register_blueprint(emotions)


@cross_origin
@app.route('/')
def home():
    return jsonify({'message': '¡Welcome!'})
