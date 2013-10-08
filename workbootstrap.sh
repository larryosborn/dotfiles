#!/bin/bash
export CWD=`pwd`
mkdir -p ~/bin
#rm -rf ~/.vim ~/.vimrc
#cp -r .vim .vimrc ~/
#git clone https://github.com/joyent/node.git
#cd node
#./configure
#make
#cp out/Release/node ~/bin/
#cd $CWD
#git clone https://github.com/isaacs/npm.git
#cd npm
#./configure
#make
#node bin/npm-cli.js -g install npm
#cd $CWD
npm install -g jshint
wget http://download.logilab.org/pub/pylint/pylint-1.0.0.tar.gz
tar -xzvf pylint-1.0.0.tar.gz
cd pylint-1.0.0
python setup.py install --user
cd $CWD
rm -rf pylint-1.0.0.tar.gz pylint-1.0.0
