FROM busybox

WORKDIR /usr/src/app

VOLUME ["/.rocketpool"]

ADD config.yml /.rocketpool/config.yml
ADD settings.yml /.rocketpool/settings.yml

CMD ["/bin/sleep", "infinity"]
