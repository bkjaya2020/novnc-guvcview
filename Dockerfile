
FROM ubuntu:bionic

MAINTAINER B.K.Jayasundera

# environment variables
ENV HOME=/root \
    DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=C.UTF-8 \
    DISPLAY=:0.0 \
    DISPLAY_WIDTH=1024 \
    DISPLAY_HEIGHT=768

RUN apt-get update && apt -y install xvfb x11vnc xdotool git supervisor net-tools fluxbox gnupg2 \
    && apt install -y --no-install-recommends xfce4-terminal tzdata guvcview \
    && rm -rf /var/lib/apt/lists/* \ 
    && apt -y autoremove

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

WORKDIR /root/
RUN git clone https://github.com/novnc/noVNC.git /root/noVNC \
       && git clone https://github.com/novnc/websockify /root/noVNC/utils/websockify \
       && rm -rf /root/noVNC/.git \
       && rm -rf /root/noVNC/utils/websockify/.git 
       
COPY bash.bashrc /etc/bash.bashrc
EXPOSE 8080
CMD ["/usr/bin/supervisord"]
