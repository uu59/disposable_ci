FROM stackbrew/debian:7.2

MAINTAINER uu59
RUN sed -i -E 's#ftp.us.(.*?)main#ftp.jp.\1main contrib non-free#g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install python-dev python-pip curl vim git build-essential ncurses-base
RUN pip install ansible cram

