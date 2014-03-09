#!/bin/bash

ECLIPSE_LINK="https://googledrive.com/host/0B90Kuva0st4pcEtaTFR2T1NXX0U"

cd ~
mkdir -p Desarrollo/Workspace
cd Desarrollo

#Download packages:
sudo apt-get -y update
sudo apt-get -y install terminator
sudo apt-get -y install gcc
sudo apt-get -y install gdb
sudo apt-get -y install libncurses5
sudo apt-get -y install valgrind
sudo apt-get -y install tig
sudo apt-get -y install gitg
sudo apt-get -y install meld
sudo apt-get -y install git
sudo apt-get -y install vim
sudo apt-get -y install geany
sudo apt-get -y install pidgin
sudo apt-get -y install make
sudo apt-get -y install autotools-dev
sudo apt-get -y install strace
sudo apt-get -y install nano
sudo apt-get -y install openjdk-7-jdk
sudo apt-get -y install libcunit1
sudo apt-get -y install libevent1-dev
sudo apt-get -y install ssh
sudo apt-get -y install wireshark
sudo apt-get -y install libfuse-dev
sudo apt-get -y install build-essential
sudo apt-get -y install g++
sudo apt-get -y install libcunit1-dev
sudo apt-get -y install curl
sudo apt-get -y install xclip
sudo apt-get -y install htop
sudo apt-get -y install wget

#Download eclipse:
wget $ECLIPSE_LINK
tar xfv *.tar.gz

#Create shortcuts:
cd $(xdg-user-dir DESKTOP)
create_shortcut() {
	FILENAME="$1.desktop"
	echo "[Desktop Entry]" > $FILENAME
	echo "Name=$1" >> $FILENAME
	echo "Exec=$2" >> $FILENAME
	echo "Icon=$3" >> $FILENAME
	echo "Type=Application" >> $FILENAME
	chmod +x $FILENAME
}

create_shortcut "Eclipse" ~/Desarrollo/eclipse/eclipse ~/Desarrollo/eclipse/icon.xpm
