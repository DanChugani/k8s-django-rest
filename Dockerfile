FROM python:3.8-buster

ENV PYTHONUNBUFFERED 1
EXPOSE 8000

RUN mkdir /code
WORKDIR /code

ADD requirements.txt /code/
RUN pip install -r requirements.txt

ADD . /code/

#Run Build
CMD ["./run_web.sh"]