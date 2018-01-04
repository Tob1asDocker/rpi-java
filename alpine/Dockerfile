FROM resin/raspberry-pi-alpine:3.6

MAINTAINER Tobias Hargesheimer <docker@ison.ws>

ENV LANG C.UTF-8
ENV TZ Europe/Berlin

RUN [ "cross-build-start" ]

RUN set -x && \
	apk --no-cache add \
	#git \
	#zip \
	#unzip \
	#bzip2 \
	#wget \
	#curl \
	#nano \
	tzdata \
	openjdk8 \
	openjdk8-jre

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN [ "cross-build-end" ]

ENTRYPOINT ["/entrypoint.sh"]
#CMD ["java","-jar","/App.jar"]