FROM ubuntu:focal

ENV TZ=America/New_York
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install tzdata

RUN apt-get update && apt-get -y dist-upgrade; apt install -y build-essential cmake extra-cmake-modules pkg-config ninja-build libfreetype-dev libsdl2-dev libpng-dev libopenal-dev librtmidi-dev libfaudio-dev qtbase5-dev qtbase5-private-dev qttools5-dev libevdev-dev git vim

RUN useradd -d /86Box -u 1000 nick
RUN git config --global user.name 'Geryon'
RUN git config --global user.email 'nick@declario.com'
USER nick

WORKDIR /86Box
