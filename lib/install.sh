#!/bin/bash
cd lib
#---------
python2 -m argparse >/dev/null 2>/dev/null
if [ "$?" != "0" ]
then
wget https://files.pythonhosted.org/packages/18/dd/e617cfc3f6210ae183374cd9f6a26b20514bbb5a792af97949c5aacddf0f/argparse-1.4.0.tar.gz
tar -xf argparse*
rm -f argparse*.gz 
cd argparse*
python2 setup.py install
cd ..
fi
#---------

#---------
python2 -m netaddr >/dev/null 2>/dev/null
if [ "$?" != "0" ]
then
wget https://files.pythonhosted.org/packages/0c/13/7cbb180b52201c07c796243eeff4c256b053656da5cfe3916c3f5b57b3a0/netaddr-0.7.19.tar.gz
tar -xf netaddr*
rm -f netaddr*.gz 
cd netaddr*
python2 setup.py install
cd ..
fi
#---------





cd ..
rm -rf lib
