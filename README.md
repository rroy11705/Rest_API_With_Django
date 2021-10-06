# Rest API With Django

## Description

This is a Restful API using Django and MySQL.
The purpose of the API is to let the users discover TV shows and movies and serve ratings from other users and the streaming platform of the TV show or movie.
The watchmate_v1 is not a Restful api. This is just for learning normal Django.
The watchmate_v2 is a Restful api using Django which contains various practices of REST_FRAMEWORK.

#### Types of Views used:
1. Class Based View (APIView class)
- Generic View
- Mixins
- Concrete View
- ViewSets

2. Function Based Views (api_view decorator)

#### Types of Serializer used:
1. serializers.Serializer
2. serializers.ModelSerializer


* **Django** is a high-level Python web framework that encourages rapid development and clean, pragmatic design. Built by experienced developers, it takes care of much of the hassle of web development, so you can focus on writing your app without needing to reinvent the wheel. It’s free and open source.
   
* **MySQL** is free and open-source software under the terms of the GNU General Public License, and is also available under a variety of proprietary licenses. MySQL has stand-alone clients that allow users to interact directly with a MySQL database using SQL, but more often, MySQL is used with other programs to implement applications that need relational database capability.

---

## Pre-requisites
At least Python 3.6 installed. 
* [Installation guide on Windows](https://docs.python.org/3.6/using/windows.html)
* [Installation guide on Unix](https://docs.python.org/3.6/using/unix.html)
* [Installation guide on Macintosh](https://docs.python.org/3.6/using/mac.html)

---

## Getting Started

1. Clone the repository using:
    > git clone https://github.com/rroy11705/Rest_API_With_Django

2. It is suggested to use a virtual environment.
    * To install virtualenv
        > pip install virtualenv
    * To create a virtualenv
        > virtualenv env_name
    * To activate virtualenv
        > source env_name/bin/activate (on linux or mac)
        > env_name\Scripts\activate (on windows)

3. Go to console, open cmd with the folder path and install dependencies from _requirements.txt_ file using:
    > pip install -r requirements.txt

4. Make Sure you have MySQL installed and running. 
   You can download MySQL from [MySQL Community Downloads](https://dev.mysql.com/downloads/). For this project we only need MySQL Server and MySQL Workbench.

5. Rename the _.envexample_ file to _.env_ and assign significant values to the environment variables

6. From console run the _run-app.py_ using:
    > python app.py

7. Use Postman to check the endpoints.

---

## Endpoints for watchmate_v2

#### 1. /api/create-user \[method=GET\]
To create a user using POST method.


#### 2. /auth/login \[method=POST\]
To log in using an existing email address and returns a Bearer token.


#### 3. /auth/signup \[method=POST\]
To create a new user and store the user details to database.


#### 3. /auth/reset_password \[method=PUT\]
To reset a password using an existing email address and existing password.


---

## LICENSE

[MIT License](https://github.com/rroy11705/Student-Management-System-Flask/blob/main/LICENSE)
Copyright (c) 2021 Rahul Roy