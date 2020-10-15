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


<img src="https://raw.githubusercontent.com/bkjaya2020/novnc-guvcview/main/Screenshot%20from%202020-10-15%2022-22-19.png" alt="https://raw.githubusercontent.com/bkjaya2020/novnc-guvcview/main/Screenshot%20from%202020-10-15%2022-22-19.png" width="625" height="520">

Figure :- 1 guvcview USB camera stream at http://localhost:8008/vnc_lite.html

<img src="https://raw.githubusercontent.com/bkjaya2020/novnc-guvcview/main/Screenshot%20from%202020-10-15%2022-23-21.png" alt="https://raw.githubusercontent.com/bkjaya2020/novnc-guvcview/main/Screenshot%20from%202020-10-15%2022-23-21.png" width="625" height="520">

Figure :- 2 guvcview can be started using the Applications>shells>bash also
