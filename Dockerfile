FROM node:12

# RUN printf "deb http://httpredir.debian.org/debian jessie-backports main non-free\ndeb-src http://httpredir.debian.org/debian jessie-backports main non-free" > /etc/apt/sources.list.d/backports.list
RUN echo 'http://deb.debian.org/debian stretch main contrib non-free' > /etc/apt/sources.list.d/backports.list
RUN apt-get update -y \
&&  apt-get install libnss3-tools -y

ADD entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
