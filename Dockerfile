FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN pip3 install numpy pandas
RUN pip install flask
RUN pip install psycopg2-binary
RUN pip install configparser
COPY web.py /srv/app/web.py
COPY web.conf /srv/app/conf/web.conf
RUN python3 /srv/app/web.py