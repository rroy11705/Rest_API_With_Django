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


**Django** is a high-level Python web framework that encourages rapid development and clean, pragmatic design. Built by experienced developers, it takes care of much of the hassle of web development, so you can focus on writing your app without needing to reinvent the wheel. It’s free and open source.
   
**MySQL** is free and open-source software under the terms of the GNU General Public License, and is also available under a variety of proprietary licenses. MySQL has stand-alone clients that allow users to interact directly with a MySQL database using SQL, but more often, MySQL is used with other programs to implement applications that need relational database capability.

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

#### 1. /watch/list \[allowed methods = GET, POST\]
The GET method is to fetch all list of all TV shows and Movies available.
The POST method id to add a single watchable TV show or Movie to the database.


#### 2. /watch/list/show_id(integer)/ \[allowed methods  = GET, PUT, DELETE\]
The GET method is to fetch the data of the TV shows or Movies with a show_id, which is of type integer.
The PUP method is to update the data of the TV shows or Movies with a show_id.
The DELETE method is to delete the TV shows or Movies record with a show_id.


#### 3. /watch/stream/ \[allowed methods = GET, POST\]
The GET method is to fetch all list of Streaming Platforms available.
The POST method id to add a single Streaming Platform to the database.


#### 4. /watch/stream/stream_id(integer)/ \[allowed methods  = GET, PUT, DELETE\]
The GET method is to fetch the data of the Streaming Platform with id = stream_id, which is of type integer.
The PUP method is to update the data of the Streaming Platform with id = stream_id.
The DELETE method is to delete the Streaming Platform record with id = stream_id.


#### 5. /watch/list/show_id/reviews/ \[allowed methods = GET\]
The GET method is to fetch all reviews of the TV shows or Movie with id = show_id.


#### 6. /watch/review/review_id/ \[allowed methods = GET, PUT, PATCH, DELETE\]
The GET method is to fetch the review with id = review_id.
The PUT method is to update the entire review with id = review_id.
The PATCH method is to update the review partially with id = review_id.
The DELETE method is to delete the review with id = review_id.


#### 7. list/show_id/review-create/ \[allowed methods = POST\]
The POST method is to create a review for the TV shows or Movie with id = show_id.


---

## LICENSE

[MIT License](https://github.com/rroy11705/Student-Management-System-Flask/blob/main/LICENSE)
Copyright (c) 2021 Rahul Roy