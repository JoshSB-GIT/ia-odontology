from flask import Blueprint, jsonify, make_response, request
from db.db import conn
from flask_cors import cross_origin
from utils.validations import *
from nltk.sentiment.vader import SentimentIntensityAnalyzer
from googletrans import Translator
import nltk
# Descomentar la primera vez que se corre la API
# nltk.download('vader_lexicon')
emotions = Blueprint('emotions', __name__)


@cross_origin
@emotions.route('/getEmotion', methods=['POST'])
def get_emotions():
    message = ''
    requ = ''
    translator = Translator()
    cadena = request.json['input_emotion']
    idiome_dest = 'en'
    traduccion = translator.translate(cadena, dest=idiome_dest)
    sid = SentimentIntensityAnalyzer()
    result = sid.polarity_scores(traduccion.text)
    if float(result['compound']) <= -0.4:
        message = '-1'
        requ = 'texto negativo'
    elif float(
            result['compound']) >= -0.3 and float(result['compound']) <= 0.3:
        message = '0'
        requ = 'texto neutral'
    elif float(result['compound']) >= 0.4:
        message = '1'
        requ = 'texto positivo'

    cursor = conn.connection.cursor()
    query = (f"INSERT INTO emotions "
             + "(text_input, porcentage, result, user_id) "
             + "VALUES ('{}','{}','{}','{}')".format(
                 str(request.json['input_emotion']),
                 str(float(
                     result['compound'])),
                 str(requ),
                 '1'))
    cursor.execute(query)
    conn.connection.commit()
    cursor.close()

    return jsonify({'message': str(message)})
