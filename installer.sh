#!/bin/bash
apt > /dev/null 2>/dev/null
if [ $? != "127" ]
then
pack="apt"
fi

if [ "$pack" == "apt" ]
then
sudo bash _install/apt
else
echo ""
echo `tput setaf 196` "Please install apt" `tput sgr0`
echo ""
exit
fi
chmod +x ./swit-scanner
