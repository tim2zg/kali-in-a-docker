FROM kalilinux/kali-rolling

RUN apt-get update
RUN apt upgrade -y

RUN echo "keyboard-configuration  keyboard-configuration/variant  select  English (US)" | debconf-set-selections
RUN apt-get install kali-desktop-xfce -y

ENV VNCPWD kali
ENV USER root
ENV SHELL /bin/bash

RUN apt install -y novnc tightvncserver dbus dbus-x11

RUN apt install -y nano net-tools

RUN apt-get clean

COPY dockerInit.sh /dockerInit.sh
RUN chmod +x /dockerInit.sh

EXPOSE 5900
EXPOSE 8081

CMD ["./dockerInit.sh"]