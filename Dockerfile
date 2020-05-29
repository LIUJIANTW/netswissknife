FROM ubuntu:20.10

ADD tz.sh /tz.sh
RUN /tz.sh

RUN apt update && apt install telnet curl net-tools inetutils-ping dnsutils pip  wget zip awscli  tcpdump dnsutils -y && apt-get clean

ENTRYPOINT ["bash"]
