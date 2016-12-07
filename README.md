# Java 8 (OpenJDK) on Raspberry Pi

### Image Info
* http://openjdk.java.net/

### How to use this image
* ``` docker pull tobi312/rpi-java ```
* Your ``` Dockerfile ``` :
	```Dockerfile
	FROM tobi312/rpi-java:latest
	COPY . /app
	WORKDIR /app
	CMD ["java","-jar","App.jar"]
	```
* ``` docker build -t my-java-app . ```
* ``` docker run -it --rm --name my-running-app my-java-app ```

or build it yourself
* ``` git clone https://github.com/TobiasH87Docker/rpi-java.git && cd rpi-java ```
* ``` docker build -t tobi312/rpi-java . ``` 
* see above

### This Image on
* [DockerHub](https://hub.docker.com/r/tobi312/rpi-java/)
* [GitHub](https://github.com/TobiasH87Docker/rpi-java)
