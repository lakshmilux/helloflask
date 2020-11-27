#FROM python:3.8
#WORKDIR /helloflask
#ENV FLASK_RUN main.py
#ENV FLASK_RUN_HOST 0.0.0.0
#RUN pip install -r requirements.txt
#COPY requirements.txt requirements.txt
#COPY . .
#CMD ["flask","run"]
FROM python:3.8
COPY . /helloflask/deploy
COPY  . /requirements.txt/helloflask/deploy
WORKDIR /helloflask/deploy

RUN apt-get update
RUN apt-get -y install gcc
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
ENV FLASK_APP main.py
ENV FLASK_RUN_HOST 0.0.0.0
EXPOSE 8001
#ENTRYPOINT [ "python" ]
CMD ["flask","run"]
