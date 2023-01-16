FROM archlinux:latest

RUN echo $' \n\
  [multilib] \n\
  Include = /etc/pacman.d/mirrorlist' >> /etc/pacman.conf

RUN pacman -Sy ; pacman -Ss '.*freetype.*'

RUN pacman -Sy --noconfirm base-devel cmake extra-cmake-modules pkg-config ninja freetype2 sdl2 libpng lib32-openal rtmidi faudio qt5-base qt5-xcb-private-headers qt5-tools libevdev vulkan-devel git vim

RUN useradd -d /86Box -u 1000 nick
RUN git config --global user.name 'Geryon'
RUN git config --global user.email 'nick@declario.com'
USER nick

WORKDIR /86Box
