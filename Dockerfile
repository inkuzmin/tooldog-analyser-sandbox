FROM debian:jessie

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
    apt-utils build-essential sudo git

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    build-essential \
    ca-certificates \
    gcc \
    git \
    libpq-dev \
    make \
    python-pip \
    python2.7 \
    python2.7-dev \
    python3-pip \
    ssh \
    unzip \
    && apt-get autoremove \
    && apt-get clean

RUN pip2 install --upgrade pip
RUN pip3 install --upgrade pip
