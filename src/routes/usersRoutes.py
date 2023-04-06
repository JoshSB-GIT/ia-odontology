from flask import Blueprint, jsonify, request
from db.db import conn

users = Blueprint('users', __name__)


@users.route('/getUsers', methods=['GET'])
def get_users():
    message = 'Void request'
    try:
        cursor = conn.connection.cursor()
        query = 'SELECT * FROM users'
        cursor.execute(query)
        data = cursor.fetchall()
        cursor.close()
        users = []

        if data:
            for row in data:
                user = {
                    'id': row[0],
                    'username': row[1],
                    'password': row[2]
                }
                users.append(user)
            message = users
    except Exception as err:
        message = str(err)

    return jsonify({'users': message})


@users.route('/addUsers', methods=['POST'])
def add_users():
    message = ''
    username = request.json['username']
    password = request.json['password']
    try:
        cursor = conn.connection.cursor()
        query = ('INSERT INTO users (username, password)'
                 + 'VALUES ({},{})').format(username, password)
        cursor.execute(query)
        conn.connection.commit()
        cursor.close()
    except Exception as err:
        message = str(err)
    return jsonify({'message': message})
