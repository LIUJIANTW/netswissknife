FROM ubuntu:22.04

RUN apt update && export DEBIAN_FRONTEND=noninteractive && apt-get install -y tzdata && ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime && dpkg-reconfigure --frontend noninteractive tzdata

RUN apt update && apt install telnet curl net-tools inetutils-ping dnsutils pip hping3 nmap slurm wget zip awscli netcat tcpdump dnsutils -y && apt-get clean

ENTRYPOINT ["bash"]
