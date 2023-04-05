from flask import Blueprint, jsonify, request, session
from db.db import conn

auth = Blueprint('auth', __name__)


@auth.route('/login', methods=['POST'])
def auth_login():
    message = 'Wrong username or password'
    username = request.json['username']
    password = request.json['password']
    try:
        cursor = conn.connection.cursor()
        query = (
            'SELECT * FROM users' +
            ' WHERE username={} AND password={}').format(username, password)
        cursor.execute(query)
        data = cursor.fetchone()
        cursor.close()
        if data:
            session['username'] = data[1]
            message = 'User successfully logged in!'
    except Exception as err:
        message = str(err)

    return jsonify({'message': message})


@auth.route("/logout", methods=['GET'])
def logout():
    message = 'User not in session'
    if 'username' in session:
        session.pop('username')
        message = 'You have logged out'
    return jsonify({'message': message})
