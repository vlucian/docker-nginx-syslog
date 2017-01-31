FROM alpine:latest
MAINTAINER aaraujo@protonmail.ch

ENV syslog_server ""

WORKDIR /home

RUN apk add --update nginx && rm -rf /var/cache/apk/*

ADD nginx.conf /etc/nginx/nginx.conf
ADD index.html /home/index.html
ADD entry.sh /home/entry.sh
RUN chmod +x /home/entry.sh 

EXPOSE 80

ENTRYPOINT ["./entry.sh"]
