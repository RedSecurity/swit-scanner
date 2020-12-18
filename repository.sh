#! /bin/bash
sudo add-apt-repository "deb http://http.kali.org/kali kali-rolling main non-free contrib"
sudo add-apt-repository "deb-src http://http.kali.org/kali kali-rolling main non-free contrib"
sudo gpg --keyserver hkp://keys.gnupg.net --recv-key 7D8D0BF6
sudo gpg --fingerprint 7D8D0BF6
sudo gpg -a --export 7D8D0BF6 | apt-key add -
