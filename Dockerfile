FROM python:3.10.4-slim-bullseye

ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ENV HOME_USER danielr
ENV HOME_PASS password

RUN useradd -m -s /bin/bash ${HOME_USER} && \
  echo "${HOME_USER}:${HOME_PASS}"|chpasswd && \
  adduser ${HOME_USER} sudo && \
  echo ${HOME_USER}' ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

WORKDIR /code

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY . .
