FROM ubuntu:bionic
MAINTAINER David Signer

RUN apt update \
	&& yes | apt install nodejs \
	&& yes | apt install npm \
	&& yes | apt install libgl1-mesa-glx \
	&& yes | apt install openjdk-8-jdk-headless \
	&& yes | apt install zip \
	&& yes | apt install wget \
	&& wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin \
	&& npm install gitbook-cli -g \
	&& yes | apt install python3-pip \
	&& pip3 install standardebooks


