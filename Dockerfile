FROM jenkinsci/blueocean

USER root
RUN apk update \
  && apk add \
    py-pip \
    python-dev \
    libffi-dev \
    openssl-dev \
    gcc \
    libc-dev \
    make \
  && rm -rf /var/cache/apk/*
RUN pip install docker-compose

USER jenkins
