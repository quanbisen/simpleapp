FROM ubuntu:latest

RUN mv /etc/apt/sources.list /etc/apt/sources.list_bak
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ bionic main multiverse restricted universe\ndeb http://mirrors.aliyun.com/ubuntu/ bionic-backports main multiverse restricted universe\ndeb http://mirrors.aliyun.com/ubuntu/ bionic-proposed main multiverse restricted universe\ndeb http://mirrors.aliyun.com/ubuntu/ bionic-security main multiverse restricted universe\ndeb http://mirrors.aliyun.com/ubuntu/ bionic-updates main multiverse restricted universe\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic main multiverse restricted universe\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic-backports main multiverse restricted universe\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed main multiverse restricted universe\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic-security main multiverse restricted universe\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic-updates main multiverse restricted universe" >  /etc/apt/sources.list
RUN apt update
RUN apt install -y nodejs npm
ADD app.js /var/www/app.js
ADD package.json /var/www/package.json
WORKDIR /var/www
RUN npm install
CMD nodejs app.js
