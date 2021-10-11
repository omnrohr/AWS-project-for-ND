#pull official base image
FROM python:3.11.0a1-slim

# set working directory
COPY . /app
WORKDIR /app

# install dependencies
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

ENTRYPOINT ["gunicorn"  , "-b", ":8080", "main:APP"]