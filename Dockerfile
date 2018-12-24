FROM docker:17.05.0-dind

RUN apk add --no-cache tzdata \
 && cp /usr/share/zoneinfo/Hongkong /etc/localtime \
 && apk add --no-cache bash openssh openrc \
 && rc-update add sshd \
 && mkdir -p /run/openrc && touch /run/openrc/softlevel \
 && echo "root:please change it" | chpasswd

COPY ./sshd_config \
     /etc/ssh/sshd_config

EXPOSE 22
