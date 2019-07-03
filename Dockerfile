FROM php:7.1-cli-alpine

COPY magallanes /usr/local/bin/magallanes

RUN apk update \ 
    && apk add rsync \
    && apk add openssh 

RUN ln -s /usr/local/bin/magallanes/latest/bin/mage /usr/local/bin/mage
CMD ['mage']