FROM resin/rpi-raspbian:stretch

MAINTAINER Tobias Hargesheimer <docker@ison.ws>

ENV LANG C.UTF-8
ENV TZ Europe/Berlin

RUN [ "cross-build-start" ]

RUN apt-get update && apt-get install -y \
	git \
	zip unzip \
	bzip2 \
	wget \
	nano \
	openjdk-8-jre \
	openjdk-8-jdk \
	ca-certificates-java \
	--no-install-recommends && \
	rm -rf /var/lib/apt/lists/* && \
	/var/lib/dpkg/info/ca-certificates-java.postinst configure

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-armhf

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN [ "cross-build-end" ]

ENTRYPOINT ["/entrypoint.sh"]
#CMD ["java","-jar","/App.jar"]
