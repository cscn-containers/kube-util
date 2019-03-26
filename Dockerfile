FROM ubuntu:18.04
LABEL maintainer=tellxp@github.com
RUN sed -i s/archive.ubuntu.com/mirrors.aliyun.com/g /etc/apt/sources.list && \
    sed -i s/security.ubuntu.com/mirrors.aliyun.com/g /etc/apt/sources.list && \
    apt-get update
RUN apt-get install -y tzdata vim curl dnsutils traceroute net-tools iputils-ping iproute2 && \
	ln -sf /usr/share/zoneinfo/Asia/Chongqing /etc/localtime && \
	echo "Asia/Chongqing" > /etc/timezone && \
	dpkg-reconfigure -f noninteractive tzdata