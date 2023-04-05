from flask import Blueprint, jsonify

chatbot = Blueprint('chatbot', __name__)


@chatbot.route('/getChatbot', methods=['GET'])
def get_chatbot():
    return jsonify({'chatbot': ''})


@chatbot.route('/addConversation', methods=['POST'])
def add_chatbot():
    return jsonify({'chatbot': ''})
