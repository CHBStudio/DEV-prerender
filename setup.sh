#!/usr/bin/env bash

#node dependencies
npm i

#chrome ubuntu
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install google-chrome-stable

#service
sudo echo "#!/bin/bash
cd /opt/DEV-prerender
npm run start" > /etc/init.d/local.autostart
sudo chmod +x /etc/init.d/local.autostart
sudo update-rc.d local.autostart defaults 80