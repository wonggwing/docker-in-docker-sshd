FROM docker:dind

RUN apk add --no-cache tzdata \
 && cp /usr/share/zoneinfo/Hongkong /etc/localtime \
 && apk add --no-cache openssh openrc \
 && rc-update add sshd

COPY ./sshd_config \
     /etc/ssh/sshd_config

EXPOSE 22
