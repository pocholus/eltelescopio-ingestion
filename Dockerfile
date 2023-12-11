FROM python:slim-bullseye

#ENV VIRTUAL_ENV /env
#ENV PATH /env/bin:$PATH

WORKDIR /app
COPY . /app

RUN apt-get update
RUN apt-get -y install openssh-client
RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt
