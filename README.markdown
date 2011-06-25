Introduction
------------

This project is an easy to use dialog for your iOS applications which will prompt the user to rate your application on the app store. It will automatically detect how many times the application has launched and only display the dialog after a configurable number of launches.

Usage
-----

Simply include "RateThisAppDialog.h" and "RateThisAppDialog.m" in your project. Open the header file and configure it to work to your liking:

    // this is the link to your app in itunes
    // Please use the "iTunes Link Maker" to create this url:
    // http://itunes.apple.com/linkmaker/
    // you do not need to put "itms://" at the front or anything like that.
    #define APP_STORE_LINK @"http://itunes.apple.com/au/app/crayon-box/id425861168?mt=8&uo=4"

    // this is how many times your app can launch before showing this dialog
    // ie. setting this to 2 will cause the dialog to appear on the second time the app is launched
    #define PROMPT_AFTER_X_LAUNCHES 2

    // title that appears at the top of the alert window
    #define ALERT_TITLE @"Review Kinetic"
    // text which appears under the title of the alert window
    #define ALERT_TEXT @"Thank you for using Kinetic. Please take a moment to rate and review us on the App Store."

    // button 1 (top, or left for vertical) text
    #define ALERT_BUTTON_1_TEXT @"Yes"
    // button 2 (middle, or right for vertical) text
    #define ALERT_BUTTON_2_TEXT @"Not Now"
    // button 3 (bottom, or not used for vertical) text
    #define ALERT_BUTTON_3_TEXT @"No, don't ask again"

    #define ALERT_BUTTON_1_ACTION @"RATE_NOW"
    #define ALERT_BUTTON_2_ACTION @"RATE_LATER"
    #define ALERT_BUTTON_3_ACTION @"RATE_NEVER"

    // set this to true if there are three values set
    //#define VERTICAL_LAYOUT

Hopefully I have included enough comments to make it easy for you to configure. Basically, you can have two or three buttons (for three buttons you need to uncomment that "VERTICAL_LAYOUT" define). You can configure the text and action for each of the buttons (only those three actions listed are available).



When the application launches init the object like this:

[[RateThisAppDialog alloc] init];

You might want to keep it referenced somewhere until later. Sorry I have not figured out a way to make this bit easier yet.

After that point the dialog code will determine how many times the application has launched and display 