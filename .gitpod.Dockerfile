FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo apt-get update && sudo apt-get install -y \
    apt-transport-https \
    curl \
    gradle \
    openjdk-17-jdk \
    wget \
    unzip \
    && sudo rm -rf /var/lib/apt/lists/*

ENV ANDROID_HOME="/workspace/android-sdk-linux"
ENV PATH="${PATH}:${ANDROID_HOME}/cmdline-tools/latest/bin:${ANDROID_HOME}/platform-tools"