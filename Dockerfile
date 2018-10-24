FROM openjdk:8

MAINTAINER Andriy Hulyk <andriy.hulyk@gmail.com>

# Install Git and dependencies
RUN dpkg --add-architecture i386 \
 && apt-get update \
 && apt-get install -y file git curl zip libncurses5:i386 libstdc++6:i386 zlib1g:i386 \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists /var/cache/apt

# Set up environment variables
ENV ANDROID_HOME="/home/user/android-sdk" \
    SDK_URL="https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip"
    
# Create a non-root user
RUN useradd -m user
USER user
WORKDIR /home/user


# Download Android SDK
RUN mkdir "$ANDROID_HOME" .android \
 && cd "$ANDROID_HOME" \
 && curl -o sdk.zip $SDK_URL \
 && unzip sdk.zip \
 && rm sdk.zip \
 && yes | $ANDROID_HOME/tools/bin/sdkmanager --licenses

ENV PATH="${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools:${PATH}"
