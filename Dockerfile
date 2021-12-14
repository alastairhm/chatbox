FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y npm wget zip git && \
    wget --no-check-certificate https://github.com/newbotjs/template/archive/refs/heads/master.zip && \
    unzip master.zip && \
    cd template-master && \
    npm install

WORKDIR /template-master

ENTRYPOINT ["npm","run","dev"]
