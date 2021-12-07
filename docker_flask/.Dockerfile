FROM python:3.8.5

RUN pip3 install flask flask-cors 
# flask-mysql

WORKDIR /usr/src/app
