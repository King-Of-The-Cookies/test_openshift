FROM openshift/python:lastest

COPY . /app

WORKDIR /app

RUN pip install flask uwsgi

CMD ["uwsgi", "uwsgi.ini"]