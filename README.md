# Java 8 (OpenJDK) on Raspberry Pi / armhf

### Supported tags
-	`latest` (*It always uses the latest OpenJDK version (JRE and JDK) contained in raspbian:stretch.*)

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

or build it yourself
* ``` $ git clone https://github.com/TobiasH87Docker/rpi-java.git && cd rpi-java ```
* ``` $ docker build -t tobi312/rpi-java:latest . ``` 
* see above

### This Image on
* [DockerHub](https://hub.docker.com/r/tobi312/rpi-java/)
* [GitHub](https://github.com/TobiasH87Docker/rpi-java)
