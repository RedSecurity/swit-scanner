#! /bin/bash
sudo apt-get update
pip3 > /dev/null 2>/dev/null
if [ "$?" == "127" ]
then
sudo apt-get install -y python3-pip
fi
sudo add-apt-repository "deb http://http.kali.org/kali kali-rolling main non-free contrib"
sudo add-apt-repository "deb-src http://http.kali.org/kali kali-rolling main non-free contrib"
sudo gpg --keyserver hkp://keys.gnupg.net --recv-key 7D8D0BF6
sudo gpg --fingerprint 7D8D0BF6
sudo gpg -a --export 7D8D0BF6 | apt-key add -
