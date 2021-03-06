# Java 8 (OpenJDK; JRE and JDK) on Raspberry Pi / ARM

### NOT MAINTAINED AND DEPRECATED

This image is not maintained and is deprecated!  
  
Please use the following images:

* offical [OpenJDK](https://hub.docker.com/_/openjdk)-Images
* offical [AdoptOpenJDK](https://hub.docker.com/_/adoptopenjdk)-Images or Images build by [AdoptOpenJDK](https://hub.docker.com/u/adoptopenjdk)
* [balena](https://www.balena.io/docs/reference/base-images/base-images-ref/)-OpenJDK-Images and more.
* [webhippie/java](https://hub.docker.com/r/webhippie/java)-Images

---

### Supported tags
-	[`latest` (*Dockerfile*)](https://github.com/Tob1asDocker/rpi-java/blob/master/debian/Dockerfile) (*It always uses the latest Java 8 version contained in raspbian:stretch.*)
-	[`alpine` (*Dockerfile*)](https://github.com/Tob1asDocker/rpi-java/blob/master/alpine/Dockerfile) (*It always uses the latest Java 8 [version](https://pkgs.alpinelinux.org/package/v3.9/community/armhf/openjdk8) contained in alpinelinux.*)

### What is OpenJDK?
OpenJDK (Open Java Development Kit) is a free and open source implementation of the Java Platform, Standard Edition (Java SE). OpenJDK is the official reference implementation of Java SE since version 7.
> [wikipedia.org/wiki/OpenJDK](http://en.wikipedia.org/wiki/OpenJDK) and [openjdk.java.net](http://openjdk.java.net/)

![logo](https://raw.githubusercontent.com/docker-library/docs/master/openjdk/logo.png)

### How to use this image

* compare with: https://hub.docker.com/_/openjdk/

* ``` $ docker pull tobi312/rpi-java:latest ```
* Your ``` Dockerfile ``` :
```Dockerfile
FROM tobi312/rpi-java:latest
COPY . /app
WORKDIR /app
CMD ["java","-jar","App.jar"]
```
* ``` $ docker build -t my-java-app . ```
* ``` $ docker run -it --rm --name my-running-app my-java-app ```

### This Image on
* [DockerHub](https://hub.docker.com/r/tobi312/rpi-java)
* [GitHub](https://github.com/Tob1asDocker/rpi-java)
