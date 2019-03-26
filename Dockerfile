FROM ubuntu:18.04
LABEL maintainer=tellxp@github.com
RUN apt update
RUN apt install -y vim curl net-tools iputils-ping iproute2 tzdata && \
	ln -sf /usr/share/zoneinfo/Asia/Chongqing /etc/localtime && \
	echo "Asia/Chongqing" > /etc/timezone && \
	dpkg-reconfigure -f noninteractive tzdata