FROM python:slim-bullseye

#ENV VIRTUAL_ENV /env
#ENV PATH /env/bin:$PATH

WORKDIR /app
COPY . /app

RUN apt-get update
RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt
