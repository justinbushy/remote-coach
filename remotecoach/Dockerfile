FROM python:3.7

RUN apt-get update && \
  apt-get install -y postgresql-client

RUN mkdir /app
WORKDIR /app
ADD . /app

RUN pip install -r requirements.txt

EXPOSE 8000
CMD ["/app/entrypoint.sh"]