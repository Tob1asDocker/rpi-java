FROM balenalib/raspberry-pi-alpine:3.9

LABEL org.opencontainers.image.authors="*" \
	org.opencontainers.image.title="JAVA" \
	org.opencontainers.image.description="AlpineLinux with JAVA on arm arch" \
	org.opencontainers.image.licenses="Apache-2.0" \
	org.opencontainers.image.url="https://hub.docker.com/r/tobi312/rpi-java" \
	org.opencontainers.image.source="https://github.com/Tob1asDocker/rpi-java"

ARG CROSS_BUILD_START=":"
ARG CROSS_BUILD_END=":"

RUN [ ${CROSS_BUILD_START} ]

ENV TZ Europe/Berlin

# A few reasons for installing distribution-provided OpenJDK:
#
#  1. Oracle.  Licensing prevents us from redistributing the official JDK.
#
#  2. Compiling OpenJDK also requires the JDK to be installed, and it gets
#     really hairy.
#
#     For some sample build times, see Debian's buildd logs:
#       https://buildd.debian.org/status/logs.php?pkg=openjdk-8

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

# add a simple script that can auto-detect the appropriate JAVA_HOME value
# based on whether the JDK or only the JRE is installed
RUN { \
		echo '#!/bin/sh'; \
		echo 'set -e'; \
		echo; \
		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; \
	} > /usr/local/bin/docker-java-home \
	&& chmod +x /usr/local/bin/docker-java-home
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin

#ENV JAVA_VERSION 8
ENV JAVA_ALPINE_VERSION 8

RUN set -x \
	&& apk add --no-cache \
		#git \
		#wget \
		#curl \
		#nano \
		tzdata \
		openjdk8>"$JAVA_ALPINE_VERSION" \
		openjdk8-jre>"$JAVA_ALPINE_VERSION" \
	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
#CMD ["java","-jar","/App.jar"]

RUN [ ${CROSS_BUILD_END} ]