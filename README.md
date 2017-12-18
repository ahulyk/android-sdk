## Android SDK for Docker 
This image contains the latest versions of Android SDK

### Build the project in current directory
```
docker run -it -v $(pwd):/home/user/project -w /home/user/project -u $(id -u):$(id -g) ahulyk/android-sdk gradle build
```
