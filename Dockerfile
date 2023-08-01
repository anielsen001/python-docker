FROM python:3.11.4 as python
LABEL  maintainer="Aaron Nielsen - apn@apnielsen.com"

RUN apt-get update -y
RUN apt-get install -y libx11-dev
#RUN apt-get install -y gir1.2-gtk-3.0
# Install Tkinter
RUN apt-get install tk -y

# create user python with sudo (and password python)
RUN apt-get install -y sudo
RUN useradd --create-home --shell /bin/bash -G sudo python
RUN echo 'python:python' | chpasswd

WORKDIR /opt
COPY requirements.txt requirements.txt

RUN pip install --upgrade pip
RUN python3 -m pip install --no-cache-dir  -r requirements.txt 

USER python
WORKDIR /home/python