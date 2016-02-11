FROM alpine
MAINTAINER Jun SAITO <jsaito@hjklyubn.jp>

RUN apk update
RUN apk add ngircd
COPY ngircd.conf /etc/ngircd

EXPOSE 6667

ENTRYPOINT ["/usr/sbin/ngircd", "-n"]

