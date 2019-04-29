FROM python:3.7.3-stretch

RUN apt-get update && apt-get install -y \
    	build-essential \
    	git \
    	python3-dev \
    	ffmpeg \
    	libsdl2-dev \
    	libsdl2-image-dev \
    	libsdl2-mixer-dev \
    	libsdl2-ttf-dev \
    	libportmidi-dev \
    	libswscale-dev \
    	libavformat-dev \
    	libavcodec-dev \
    	zlib1g-dev \
        python3-docutils \
        python3-pygments \
        xclip

RUN apt-get install -y \
    	libgstreamer1.0 \
    	gstreamer1.0-plugins-base \
    	gstreamer1.0-plugins-good

RUN echo "deb http://ppa.launchpad.net/kivy-team/kivy/ubuntu xenial main" > /etc/apt/sources.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A863D2D6 && \
    apt-get update && \
    apt-get install -y python3-kivy
