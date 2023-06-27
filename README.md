# spring-boot-3-native-images

To run this demo, you need to have Docker, Maven and a JVM installed on your machine. 

Clone the repo to your local machine:

```
git clone https://github.com/java-online-training/spring-boot-3-native-images
```

Next, navigate into the project.

To Build the native image with Maven execute:

```
mvn -Pnative spring-boot:build-image
```

To start the image with Docker after the build:


```
docker run --rm -p 8080:8080 docker.io/library/native-image-demo:0.0.1-SNAPSHOT
```


To access the endpoint:

```
http://localhost:8080/books
```

If you have Linux on your machine, you can build the native image directly without Docker with:

```
mvn -Pnative native:compile
```
This generates an executable file *native-image-demo* in the *target* directoy. 
To start the executable simply execute:

```
./target/native-image-demo
```
