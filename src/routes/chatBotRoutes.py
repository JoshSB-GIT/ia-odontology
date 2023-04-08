from flask import Blueprint, jsonify, session, request
from flask_cors import cross_origin
import nltk
import numpy
import tflearn
from tensorflow.python.framework import ops
import random
import pickle
import json
from nltk.stem.lancaster import LancasterStemmer
from db.db import conn

stemmer = LancasterStemmer()
chatbot = Blueprint('chatbot', __name__)
# Descomentar la primera vez que se corre la API
# nltk.download('punkt')

path_file = 'src/public/conversations.json'
with open(path_file, 'r', encoding='utf-8') as file:
    datas = json.load(file)
try:
    with open('variables.pickle', 'rb') as file_pickle:
        words, tags, training, output = pickle.load(
            file_pickle
        )
except:
    words = []
    tags = []
    aux_X = []
    aux_Y = []
    for content in datas['contenido']:
        for patterns in content['patrones']:
            aux_Word = nltk.word_tokenize(patterns)
            words.extend(aux_Word)
            aux_X.append(aux_Word)
            aux_Y.append(content['tag'])
            if content['tag'] not in tags:
                tags.append(content['tag'])
    words = [stemmer.stem(w.lower()) for w in words
             if w != '?']
    words = sorted(list(set(words)))
    tags = sorted(tags)
    print('\n\n\n', str(tags), '\n\n\n')
    training = []
    output = []
    void_row = [0 for _ in range(len(tags))]
    for x, document in enumerate(aux_X):
        bucket = []
        aux_Word = [stemmer.stem(w.lower()) for w in document]
        for w in words:
            if w in aux_Word:
                bucket.append(1)
            else:
                bucket.append(0)
        output_row = void_row[:]
        output_row[tags.index(aux_Y[x])] = 1
        training.append(bucket)
        output.append(output_row)
    training = numpy.array(training)
    output = numpy.array(output)
    with open('variables.pickle', 'wb') as file_pickle:
        pickle.dump((words, tags, training, output), file_pickle)
ops.reset_default_graph()
web = tflearn.input_data(shape=[None, len(training[0])])
web = tflearn.fully_connected(web, 10)
web = tflearn.fully_connected(web, 10)
web = tflearn.fully_connected(web,
                              len(output[0]),
                              activation='softmax')
web = tflearn.regression(web)
model = tflearn.DNN(web)

# model.fit(training, output,
#           n_epoch=1000, batch_size=10,
#           show_metric=True)
# model.save('devian.tflearn')
# en caso de que hayas borrado los archivos de
# la raíz, decomenta esto y comenta las lineas de la 77 a la 83

try:
    model.load('devian.tflearn')
except:
    model.fit(training, output,
              n_epoch=1000, batch_size=10,
              show_metric=True)
    model.save('devian.tflearn')


@cross_origin
@chatbot.route('/getAnswer', methods=['GET', 'POST'])
def get_chatbot():
    input_user = request.json['input_user']
    buck = [0 for _ in range(len(words))]
    proccess_in = nltk.word_tokenize(input_user)
    proccess_in = [stemmer.stem(wrd.lower())
                   for wrd in proccess_in]

    for word_divide in proccess_in:
        for i, wrds in enumerate(words):
            if wrds == word_divide:
                buck[i] = 1
    result = model.predict([numpy.array(buck)])
    result_index = numpy.argmax(result)
    tg = tags[result_index]

    for tgAux in datas['contenido']:
        if tgAux['tag'] == tg:
            aswer = tgAux['respuestas']

    try:
        print(input_user)
        cursor = conn.connection.cursor()
        query = (f"INSERT INTO conversations "
                 + "(answer, response, user_id) "
                 + "VALUES ('{}','{}','{}')".format(str(input_user),
                                                    str(random.choice(aswer)),
                                                    '1'))
        cursor.execute(query)
        conn.connection.commit()
        cursor.close()
        return jsonify({"result": str(random.choice(aswer)),
                        "answer": input_user})
    except Exception as err:
        return jsonify({"result": err})


@cross_origin
@chatbot.route('/getConversations', methods=['GET'])
def add_chatbot():
    try:
        cursor = conn.connection.cursor()
        query = ("SELECT * FROM conversations")
        cursor.execute(query)
        data = cursor.fetchall()
        cursor.close()
        conversations = []
        if data:
            for rows in data:
                conversation = {
                    'answer': rows[1],
                    'response': rows[2],
                    'created_at': rows[4]
                }
                conversations.append(conversation)
            message = conversations
    except Exception as err:
        message = str(err)

    return jsonify({'message': message
                    })
