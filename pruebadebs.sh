#!/bin/bash

apt-get install git gcc make xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libxcb-ewmh2 --noconfirm
git clone https://github.com/baskerville/bspwm.git  
git clone https://github.com/baskerville/sxhkd.git  
cd bspwm
make
make install
cd ..  
cd sxhkd/ 
make
make install
mkdir ~/.config/bspwm
mkdir ~/.config/sxhkd
mkdir ~/.config/polybar
cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
chmod +x ~/.config/bspwm/bspwmrc  
cp -T bspwm/contrib/freedesktop/bspwm-session /usr/bin/bspwm-session  


