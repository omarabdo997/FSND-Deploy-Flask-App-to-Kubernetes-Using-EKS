FROM python:3.7.7-stretch

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]

