from flask import Blueprint, jsonify, request, session, make_response
from utils.validations import *
from db.db import conn

auth = Blueprint('auth', __name__)


@auth.route('/login', methods=['POST'])
def auth_login():
    message = 'Wrong username or password'

    json_data = request.json

    if not valide_keys_in(json_data, ['username', 'password']):
        return make_response(
            jsonify(
                {'message': 'username and password are required'}), 400)

    if not valide_str_dct(json_data):
        return make_response(
            jsonify(
                {'message': 'username and password must be str'}), 400)

    if valide_void_dct(json_data):
        return make_response(
            jsonify(
                {'message': 'username or password void'}), 400)

    if (len(request.json['username']) > 20
            or len(request.json['password']) > 25):
        return make_response(
            jsonify(
                {'message': 'length of username or password out of range'}
            ), 400)

    try:
        cursor = conn.connection.cursor()
        query = (
            "SELECT * FROM users" +
            " WHERE username='{}' AND password='{}'").format(
                request.json['username'], request.json['password'])

        cursor.execute(query)
        data = cursor.fetchone()
        cursor.close()
        if data:
            session['iduser'] = data[0]
            session['user'] = data[1]
            message = 'User successfully logged in!'
    except Exception as err:
        message = str(err)

    return jsonify({'message': message,
                    'id': session['iduser'],
                    'user': session['user']
                    })


@auth.route("/logout", methods=['GET'])
def logout():
    message = 'User not in session'
    if 'username' in session:
        session.pop('username', None)
        session.pop('iduser', None)
        message = 'You have logged out'
    return jsonify({'message': message})
