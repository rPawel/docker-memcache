FROM rpawel/ubuntu:trusty

ADD config/* /etc/

## START
RUN apt-get -q -y update \ 
 && apt-get dist-upgrade -y --no-install-recommends \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y -q memcached \
 && DEBIAN_FRONTEND=newt

