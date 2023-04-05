from flask import Blueprint, jsonify
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


@users.route('/addUsers', methods=['GET'])
def add_users():
    return jsonify({'users': ''})
