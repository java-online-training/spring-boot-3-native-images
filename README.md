# spring-boot-3-native-images

To run this demo, you need to have Docker, Maven and a GraalVM installed on your machine. 

Clone the repo to your local machine:
```
git clone https://github.com/java-online-training/spring-boot-3-native-images
```
Next, navigate into the project.

# How to build a native application as a Docker imaga
To Build a native image with Maven simply execute:
```
mvn -Pnative spring-boot:build-image
```
To start the image with Docker after the build:

```
docker run --rm -p 8080:8080 docker.io/library/native-image-demo:0.0.1-SNAPSHOT
```

To access the endpoint hit the following URL in your browser:

```
http://localhost:8080/books
```
# How to build a Native Executable without Docker
If you are using Linux on your development machine, you can build the native application also locally without Docker:
```
mvn -Pnative native:compile
```
This generates the executable binary *native-image-demo* in the *target* directoy. 
To start the executable simply execute:
```
./target/native-image-demo
```

Check out this blog post for more infos about Spring native images: https://java-online-training.de/?p=61
