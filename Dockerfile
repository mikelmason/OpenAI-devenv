# syntax=docker/dockerfile:1

FROM python:alpine

WORKDIR /app

RUN apk update
RUN apk add git

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY ./src .

CMD ["flask", "--app", "app", "run", "--host=0.0.0.0"]
