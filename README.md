## Android SDK for Docker 
This image contains the latest versions of Android SDK

### Start a container with bash
```
docker run -it ahulyk/android-sdk bash
```

### Build the project in current directory
```
docker run -it -v $(pwd):/home/user/project -w /home/user/project ahulyk/android-sdk ./gradlew clean assembly
```
