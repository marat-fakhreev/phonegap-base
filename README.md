# Phonegap base application

## Prepare development version

Install Node.js

    brew install node

Install Grunt CLI

    npm install -g grunt-cli

Install Bower

    npm install -g bower

Install PhoneGap

    sudo npm install -g phonegap

## Prepare repository

    git clone git@github.com:maratfakhreev/phonegap-base.git
    cd phonegap-base
    npm install

Compile application and start mocks server

    grunt

## Additional commands

Open safari webinspector for iPad Simulator

    grunt c

Build application (development version)

    grunt

    #or

    grunt development


Build application (production version)

    grunt production

Run tests

    grunt test

## Run on iOS

Open Xcode project: mobile-app/platforms/ios/GGR fleet manager.xcodeproj
