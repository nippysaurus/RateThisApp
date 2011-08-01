Introduction
------------

"RateThisApp" is some code you can drop into an iOS project to remind the user that it would be appreciated if they rated your app on the App Store. This is not the only implementation of this sort of functionality, Arash Payan also has something similar:

http://github.com/arashpayan/appirater
http://arashpayan.com/blog/2009/09/07/presenting-appirater/

Some characteristics of my implementation:

- easily modify to implement your own logic
- only attempts to solicit feedback once, does not ask again when the user upgrades to a more recent version of the app
- does not check for network connectivity before showing popup
- very lightweight ... removes itself from memory while the application is running

Usage
-----

Simply copy "RateThisAppDialog.h" and "RateThisAppDialog.m" into your project, include the header file and paste this code into your "application:didFinishLaunchingWithOptions:" method:

    [RateThisAppDialog threeButtonLayoutWithTitle:@"title"
                                          message:@"message"
                                rateNowButtonText:@"now"
                              rateLaterButtonText:@"later"
                              rateNeverButtonText:@"never"];

You can of course specify your own text for that example.

There is a two button layout too.

Examples
--------

My inspiration to do this project came from seeing the same dialog in iOS applications over the course of a few months. As a point of reference, here are a few examples from existing applications which can serve as inspiration for your implementation.

![Example Collage](http://nippysaurus.com/storage/RandomStorage/ExampleCollage.png)