from flask import Blueprint, jsonify, make_response, request
from flask_cors import cross_origin
from utils.validations import *
from nltk.sentiment.vader import SentimentIntensityAnalyzer
from googletrans import Translator
import nltk
nltk.download('vader_lexicon')
emotions = Blueprint('emotions', __name__)


@cross_origin
@emotions.route('/getEmotion', methods=['POST'])
def get_emotions():
    message = ''
    translator = Translator()
    cadena = request.json['input_emotion']
    idiome_dest = 'en'
    traduccion = translator.translate(cadena, dest=idiome_dest)
    sid = SentimentIntensityAnalyzer()
    result = sid.polarity_scores(traduccion.text)
    if float(result['compound']) <= -0.4:
        message = '-1'
    elif float(result['compound']) >= -0.3 and float(result['compound']) <= 0.3:
        message = '0'
    elif float(result['compound']) >= 0.4:
        message = '1'

    return jsonify({'message': str(message)})