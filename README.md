# spring-boot-3-native-images

To Build the native image:

```
mvn -Pnative spring-boot:build-image
```

To start the image after the build:

```
docker run --rm -p 8080:8080 docker.io/library/native-image-demo:0.0.1-SNAPSHOT
```

To access the endpoint:

```
http://localhost:8080/books
```