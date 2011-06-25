Introduction
------------

"RateThisApp" is some code you can drop into an iOS project and will prompt the user to rate your application in the App Store after it has been launched a few times (completely configurable).

You can configure most aspects of the way this component works:

* number of launches before displaying dialog
* text to use for each individual button
* action to perform for each button (rate now / later / never)
* iTunes url for your application
* your choice of two or three button configuration

If this is just 99% of what you need, it is easy to modify the code to suite your needs 100%.

There are some of the things which are not included, but might be in the future:

* trigger the dialog after a time span (like app has been installed for two weeks) instead of the number of times it has been launched
* ability to customise what happens when the user selects the "rate later" option. at the moment what happens is that the counter starts from zero again, effectively resetting the launch counter.

Usage
-----

Simply include "RateThisAppDialog.h" and "RateThisAppDialog.m" in your project. Open the header file and configure it to work to your liking. Examples of the two and three button configuration are available later in this document.

Hopefully I have included enough comments to make it easy for you to configure. Basically, you can have two or three buttons (for three buttons you need to uncomment that "VERTICAL_LAYOUT" define). You can configure the text and action for each of the buttons (only those three actions listed are available).

Once you have configured the header to your liking, you will need to execute the logic when your application launches. This is how I am currently doing it during "application:didFinishLaunchingWithOptions:":

    [[RateThisAppDialog alloc] init];

You might want to keep it referenced somewhere until later. Sorry I have not made a way to make this bit cleaner yet.

That init method will do all the logic for this dialog, there is nothing else you need to do.

Example 1
---------

This is an example of a two button configuration.

![Two Button Example](http://nippysaurus.github.com/RateThisApp/TwoButtonExample.png "Two Button Example")

    // this is the link to your app in itunes
    // Please use the "iTunes Link Maker" to create this url:
    // http://itunes.apple.com/linkmaker/
    // you do not need to put "itms://" at the front or anything like that.
    #define APP_STORE_LINK @"http://itunes.apple.com/au/app/crayon-box/id425861168?mt=8&uo=4"
    
    // this is how many times your app can launch before showing this dialog
    // ie. setting this to 2 will cause the dialog to appear on the second time the app is launched
    #define PROMPT_AFTER_X_LAUNCHES 2
    
    // title that appears at the top of the alert window
    #define ALERT_TITLE @"Review MyApp"
    // text which appears under the title of the alert window
    #define ALERT_TEXT @"Thank you for purchasing MyApp. If you are finding it useful and would like to show your support, please consider reviewing it on the App Store"
    
    // button 1 (top, or left for vertical) text
    #define ALERT_BUTTON_1_TEXT @"No Thanks"
    // button 2 (middle, or right for vertical) text
    #define ALERT_BUTTON_2_TEXT @"Rate Now"
    // button 3 (bottom, or not used for vertical) text
    #define ALERT_BUTTON_3_TEXT @"Remind Me Later"
    
    #define ALERT_BUTTON_1_ACTION @"RATE_NEVER"
    #define ALERT_BUTTON_2_ACTION @"RATE_NOW"
    #define ALERT_BUTTON_3_ACTION @"RATE_LATER"
    
    // set this to true if there are three values set
    //#define VERTICAL_LAYOUT

Example 2
---------

This is an example of a three button configuration.

![Three Button Example](http://nippysaurus.github.com/RateThisApp/ThreeButtonExample.png "Three Button Example")

    // this is the link to your app in itunes
    // Please use the "iTunes Link Maker" to create this url:
    // http://itunes.apple.com/linkmaker/
    // you do not need to put "itms://" at the front or anything like that.
    #define APP_STORE_LINK @"http://itunes.apple.com/au/app/crayon-box/id425861168?mt=8&uo=4"
    
    // this is how many times your app can launch before showing this dialog
    // ie. setting this to 2 will cause the dialog to appear on the second time the app is launched
    #define PROMPT_AFTER_X_LAUNCHES 2
    
    // title that appears at the top of the alert window
    #define ALERT_TITLE @"Review MyApp"
    // text which appears under the title of the alert window
    #define ALERT_TEXT @"Thank you for purchasing MyApp. If you are finding it useful and would like to show your support, please consider reviewing it on the App Store"
    
    // button 1 (top, or left for vertical) text
    #define ALERT_BUTTON_1_TEXT @"Rate Now"
    // button 2 (middle, or right for vertical) text
    #define ALERT_BUTTON_2_TEXT @"Don't Ask Again"
    // button 3 (bottom, or not used for vertical) text
    #define ALERT_BUTTON_3_TEXT @"Remind Me Later"
    
    #define ALERT_BUTTON_1_ACTION @"RATE_NOW"
    #define ALERT_BUTTON_2_ACTION @"RATE_NEVER"
    #define ALERT_BUTTON_3_ACTION @"RATE_LATER"
    
    // set this to true if there are three values set
    #define VERTICAL_LAYOUT