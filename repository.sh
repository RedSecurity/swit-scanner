#!/bin/bash
echo -e "deb http://http.kali.org/kali kali-rolling main non-free contrib\ndeb-src http://http.kali.org/kali kali-rolling main non-free contrib" > /etc/apt/sources.list
gpg --keyserver hkp://keys.gnupg.net --recv-key 7D8D0BF6
gpg --fingerprint 7D8D0BF6
gpg -a --export 7D8D0BF6 | apt-key add -
