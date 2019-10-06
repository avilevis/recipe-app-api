FROM python:3.7-alpine
MAINTAINER Avi Levi

# no buffering for python
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

# create user for application only
RUN adduser -D user
USER user