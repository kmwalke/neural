FROM python:3.9
LABEL maintainer="kent@slaymakercellars.com"

ARG USERNAME
ARG UID
ARG GID

RUN echo "$USERNAME:1234:$UID:$GID:docker-user,,,:/app/:/bin/bash" >> /etc/passwd

WORKDIR /app

RUN echo " \
  alias ls='ls --color=auto' \n\
  " >> ~/.bashrc

RUN echo "export PATH=/root/.local/bin:${PATH}" >> /root/.bashrc
