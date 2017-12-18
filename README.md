Android SDK for Docker 
This image contains the latest versions of Android SDK

Examples
Start a container and open the shell
docker run -it ahulyk/android-sdk bash

Build the project in current directory
docker run -it -v $(pwd):/home/user/project -w /home/user/project -u $(id -u):$(id -g) ahulyk/android-sdk gradle build

Persistent Android SDK and caches
-v android-sdk:/home/user/android-sdk-linux
-v gradle-cache:/home/user/.gradle
-v android-cache:/home/user/.android
