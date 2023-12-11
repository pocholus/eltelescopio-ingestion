FROM python:slim-bullseye

WORKDIR /app
COPY . /app

RUN apt-get update
RUN apt-get -y install openssh-client
RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt
