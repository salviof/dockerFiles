#!/usr/bin/env bash
# https://developers.supportbee.com/blog/setting-up-cucumber-to-run-with-Chrome-on-Linux/
# https://gist.github.com/curtismcmullan/7be1a8c1c841a9d8db2c
# http://stackoverflow.com/questions/10792403/how-do-i-get-chrome-working-with-selenium-using-php-webdriver
# http://stackoverflow.com/questions/26133486/how-to-specify-binary-path-for-remote-chromedriver-in-codeception
# http://stackoverflow.com/questions/40262682/how-to-run-selenium-3-x-with-chrome-driver-through-terminal
# http://askubuntu.com/questions/760085/how-do-you-install-google-chrome-on-ubuntu-16-04

# Versions
CHROME_DRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE`
SELENIUM_STANDALONE_VERSION=3.8.1
SELENIUM_SUBDIR=$(echo "$SELENIUM_STANDALONE_VERSION" | cut -d"." -f-2)

# Remove existing downloads and binaries so we can start from scratch.
yum remove google-chrome-stable
#rm ~/selenium-server-standalone-*.jar
#rm ~/chromedriver_linux64.zip
#rm /usr/local/bin/chromedriver
#rm /usr/local/bin/selenium-server-standalone.jar

# Install dependencies.
#sudo yum update
yum install -y unzip  xvfb libxi6 libgconf-2-4

yum install -y google-chrome-stable

# Install ChromeDriver.
#wget -N https://chromedriver.storage.googleapis.com/2.35/chromedriver_linux64.zip -P ~/
#unzip ~/chromedriver_linux64.zip -d ~/
#rm ~/chromedriver_linux64.zip
#mv -f ~/chromedriver /usr/local/bin/chromedriver
chown root:root /usr/local/bin/chromedriver
chmod 0755 /usr/local/bin/chromedriver
