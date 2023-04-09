from flask import Blueprint, jsonify, make_response
from flask import request as requ
from googletrans import Translator
from inscriptis import get_text
import urllib.request
from flask_cors import cross_origin
import nltk
from nltk import word_tokenize, sent_tokenize
from utils.validations import *
import re
resume = Blueprint('resume', __name__)
# nltk.download('punkt')
# nltk.download('stopwords')


@cross_origin
@resume.route('/getResume', methods=['POST'])
def get_resume():
    message = ''
    json_data = requ.json

    if not valide_keys_in(json_data, ['url_page', 'min_letters', 'translate']):
        return make_response(
            jsonify(
                {'message': 'url_page, min_letters and translate are required'}), 400)

    if not valide_str_dct(json_data):
        return make_response(
            jsonify(
                {'message': 'url_page, min_letters and translate must be str'}), 400)

    if valide_void_dct(json_data):
        return make_response(
            jsonify(
                {'message': 'url_page, min_letters and translate void'}), 400)

    if not valide_url(str(json_data['url_page'])):
        return make_response(
            jsonify(
                {'message': 'Invalid URL'}), 400)

    if not json_data['translate'].isnumeric():
        return make_response(
            jsonify(
                {'message': 'Invalid option translate'}), 400)

    if not json_data['min_letters'].isnumeric():
        return make_response(
            jsonify(
                {'message': 'min_letters must be a number'}), 400)
    try:
        url_page = requ.json['url_page']
        min_letters = int(requ.json['min_letters'])
        translate = requ.json['translate']
        html = urllib.request.urlopen(url_page).read().decode('utf-8')
        text = get_text(html)
        article_text = text
        article_text = article_text.replace("[ edit ]", "")
        article_text = re.sub(r'\[[0-9]*\]', ' ', article_text)
        article_text = re.sub(r'\s+', ' ', article_text)
        formatted_article_text = re.sub('[^a-zA-Z]', ' ', article_text)
        formatted_article_text = re.sub(r'\s+', ' ', formatted_article_text)
        sentence_list = nltk.sent_tokenize(article_text)
        stopwords = nltk.corpus.stopwords.words('english')
        word_frequencies = {}
        for word in nltk.word_tokenize(formatted_article_text):
            if word not in stopwords:
                if word not in word_frequencies.keys():
                    word_frequencies[word] = 1
                else:
                    word_frequencies[word] += 1
        maximum_frequncy = max(word_frequencies.values())
        for word in word_frequencies.keys():
            word_frequencies[word] = (word_frequencies[word]/maximum_frequncy)

        sentence_scores = {}
        for sent in sentence_list:
            for word in nltk.word_tokenize(sent.lower()):
                if word in word_frequencies.keys():
                    if len(sent.split(' ')) < min_letters:
                        if sent not in sentence_scores.keys():
                            sentence_scores[sent] = word_frequencies[word]
                        else:
                            sentence_scores[sent] += word_frequencies[word]

        import heapq
        summary_sentences = heapq.nlargest(
            7, sentence_scores, key=sentence_scores.get)
        summary = ' '.join(summary_sentences)
        if (translate == '0'):
            message = summary
        elif (translate == '1'):
            traductor = Translator()
            # Traducir string de inglés a español
            texto_spanish = traductor.translate(
                str(summary), src='en', dest='es').text
            message = str(texto_spanish)
        print(message)
        return jsonify({'message': str(message)})
    except Exception:
        print(message)
        return jsonify({'message': 'No se pudo resumir su página, '
                        + 'es importante tener en cuenta que no podemos '
                        + 'acceder a todos los sitios de internet'})
