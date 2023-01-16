FROM debian:bookworm-20230109

RUN apt-get update && apt-get -y dist-upgrade && apt-get -y install git vim build-essential cmake extra-cmake-modules pkg-config ninja-build libfreetype-dev libsdl2-dev libpng-dev libopenal-dev librtmidi-dev libfaudio-dev qtbase5-dev qtbase5-private-dev qttools5-dev libevdev-dev

RUN useradd -d /86Box -u 1000 nick
RUN git config --global user.name 'Geryon'
RUN git config --global user.email 'nick@declario.com'
USER nick

WORKDIR /86box
