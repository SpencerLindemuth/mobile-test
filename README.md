# QR Generator

QR Generator is an app that allows you to display a QR code generated by an api, and scan a QR code to decipher it's data

## Setup

1. Create an api endpoint with a path ending in /seed
2. Change the host in mobile-test/lib/commons/constants.dart to the url of your endpoint (omitting the /seed path)

## Installation
1. Connect an iPhone or Android device to your computer
### Android native app
    Run `flutter build apk` from the terminal or command prompt

### iOS and Android
    Run `flutter run --release` from the terminal or command prompt

## Usage
### Generating a code
 - Press the floating action button in the bottom right corner of the app to see the contextual speed dial
 - Choose the "Generate code" option
 - If you've correctly integrated with your endpoint and setup a valid code, your code will appear with it's expiration timer
 - If the timer expires, your new code will automatically be fetched
 
 ___In the event of an error communicating with the server, tap "Try again" to load a new code when the error is resolved___


### Scanning a code
 - Press the floating action button in the bottom right corner of the app to see the contextual speed dial
 - Choose the "Scan code" option
 - Grant camera permission when prompted
 - Place the QR code you wish to scan in the red box and see the results!



___created by Spencer Lindemuth___
