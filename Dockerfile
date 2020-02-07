FROM openshift/python:latest

COPY . /app

WORKDIR /app

RUN pip install flask uwsgi

CMD ["uwsgi", "uwsgi.ini"]