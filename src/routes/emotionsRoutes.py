from flask import Blueprint, jsonify, request
from db.db import conn
from flask_cors import cross_origin
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
    if float(result['compound']) <= -0.45:
        message = '-1'
        requ = 'texto negativo'
    elif float(
            result['compound']) >= -0.3 and float(result['compound']) <= 0.25:
        message = '0'
        requ = 'texto neutral'
    elif float(result['compound']) >= 0.25:
        message = '1'
        requ = 'texto positivo'
        
    print(result)

    cursor = conn.connection.cursor()
    query = ("INSERT INTO emotions "
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
