FROM ubuntu:20.04

RUN sed -i 's@archive.ubuntu.com@mirror.kakao.com@g' /etc/apt/sources.list

RUN ln -snf /usr/share/zoneinfo/Asia/Seoul /etc/localtime && \
    echo "Asia/Seoul" > /etc/timezone

RUN mkdir /app

RUN apt-get update
RUN apt-get -y install postgresql wget curl git build-essential

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs