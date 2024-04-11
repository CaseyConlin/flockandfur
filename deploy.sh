#!/bin/bash

export NVM_DIR=$HOME/.nvm;
. $NVM_DIR/nvm.sh;

cd /home/ec2-user/flockandfur
git pull origin main
nvm use v20
npm install &&
npm build &&
pm2 restart flockandfur