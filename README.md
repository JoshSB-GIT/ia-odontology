
# Back-End de DentiCon

Esta parte de la aplicación es la responsable de procesar la lógica, manejar la base de datos y proporcionar lo necesario para interactuar con el [Front-End](https://github.com/JoshSB-GIT/ia-odontology/tree/angular-appo) que es la interfaz de usuario.

### General

El proyecto fue realizado por [Joseph Sierra](https://github.com/JoshSB-GIT/), Giojaris Pino, Alfonso Figeroa y Lunellys Cortes.
Fue desarrollado en el lenguaje de programcación Python y como motor de base de datos se usó mysql y el framework Flask como recurso para acelerar el proceso de creación de la [API](https://en.wikipedia.org/wiki/API).

##### Debe considerar:

* Usar la versión de python 3.8.10.
* Usar Mysql 8.0
* Instalar [virtualenv](https://virtualenv.pypa.io/en/latest/installation.html) globalmente en su dispositivo
* Trabajar con entornos virtuales

![](https://cdn-icons-png.flaticon.com/128/5968/5968350.png) ![](https://cdn-icons-png.flaticon.com/128/919/919836.png) ![](https://cdn.iconscout.com/icon/free/png-256/flask-51-285137.png?f=webp&w=120)

Para utilizar los entonrnos virtuales de python use:
`pip install virtualenv`
De  esete modo, si se estropea algo o se quiera instalar cualquier cosa lo haga sólo en ese proyecto

### Debe instalar

En la raíz del proyecto puedes encontrar un archivo llamado "requirements.txt"

* Flask
* Flask-Cors
* Flask-MySQLdb
* mysqlclient
* nltk
* numpy
* python-dotenv
* tflearn
* tensorflow
* flask_cors
* googletrans
* inscriptis
* validators
* textblob

Para instalar estos paquetes de manera sencilla, una vez que hayas iniciado el entorno virtual usa:

`pip install -r requirements.txt`

Este comando instalará todo lo necesario para que el proyecto se ejecute correctamente.

## Base de datos

La base de datos llamada "ia_odontology" consta de tres tablas funcionales, las cuales son las siguientes:

#### conversations

Para guardar las conversaciondes que se tienen con el bot, como se puede observar, se guardan las respuestas y las preguntas.

| conversation_id | answer  | response | active | created_at | updated_at | user_id |
| --------------- | ------- | -------- | ------ | ---------- | ---------- | ------- |
| primary key int | varchar | varchar  | int    | timestamp  | timestamp  | int     |

#### emotions

Para guardar el texto que el usuario igresa, para guardar el porcentaje de emoción, y el resultado final.

| emotion_id  | text_input | procentage | result  | active | created_at | updated_at | user_id |
| ----------- | ---------- | ---------- | ------- | ------ | ---------- | ---------- | ------- |
| primary key | varchar    | decimal    | varchar | int    | timestamp  | timestamp  | int     |

#### resumenes

Para guardar el link de las páginas y el resumen que se realizó.

| resume_id   | resume  | link    | active | created_at | updated_at | user_id |
| ----------- | ------- | ------- | ------ | ---------- | ---------- | ------- |
| primary key | varchar | varchar | int    | timestamp  | timestamp  | int     |

---
