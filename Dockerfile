FROM python:3.7

COPY . /app
WORKDIR /app

RUN pip3 install --upgrade pip
Run pip3 install -r requirements.txt


ENTRYPOINT ["gunicorn","-b",":8080","main:APP"]
