FROM python:3.8.2-buster

ENV PYTHONUNBUFFERD 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONPATH /code

RUN mkdir /code/
WORKDIR /code
COPY .devcontainer/requirements.txt /code
COPY .dotfiles/.config /root/.config/atcoder-cli-nodejs
COPY .dotfiles/.bashrc /root/.bashrc
#COPY . /code

RUN apt-get update && \
    apt-get install -y python3-pip pypy3 nodejs npm

RUN update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 30 && \
    update-alternatives --install /usr/bin/pypy pypy /usr/bin/pypy3 30 && \
    update-alternatives --install /usr/bin/node node /usr/bin/nodejs 30

RUN npm install -g atcoder-cli

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install -r requirements.txt