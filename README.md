# Phonegap-base application

## Prepare environment

Install Node.js

    brew install node

Install Grunt CLI

    npm install -g grunt-cli

Install Bower

    npm install -g bower

Install PhoneGap

    sudo npm install -g phonegap

## Prepare repository

    git clone git@github.com:maratfakhreev/phonegap-base.git phonegap-base
    cd phonegap-base
    sh bin/install.sh

## Build application

Build application and start mocks server

    grunt                //development version
    grunt development    //development version
    grunt staging        //staging version
    grunt production     //production version

Build application

    grunt build:development    //development version
    grunt build:staging        //staging version
    grunt build:production     //production version

Run tests

    grunt test

## Run on iOS device or simulator

Open Xcode project: phonegap-base/platforms/ios/GGR fleet manager.xcodeproj

## Additional commands

Open safari webinspector for iPad Simulator

    grunt w
