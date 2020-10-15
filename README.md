# bkjaya1952/novnc-guvcview-new


A docker image with pre-installed guvcview-inux based on guvcview 

To get guvcview Refer:- http://guvcview.sourceforge.net/

Usage :-

To create a guvcview (name gvw) using bkjaya1952/novnc-guvcview-new

Refer:- https://hub.docker.com/r/bkjaya1952/novnc-guvcview-new

On the Ubuntu terminal

<code>sudo docker create -t -p 8008:8080 --name gvw --privileged=true bkjaya1952/novnc-guvcview-new</code>

<code>sudo docker start gvw</code>

<code>xdg-open http://localhost:8008/vnc_lite.html</code>


Figure :- 4 guvcview USB camera stream at http://localhost:8008/vnc_lite.html


