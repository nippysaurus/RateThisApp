Introduction
------------

"RateThisApp" is some code you can drop into an iOS project and will prompt the user to rate your application in the App Store after it has been launched a few times (completely configurable).

The implementation is relatively simple and can be extended very easily.

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

![Lane Splitter Example](http://nippysaurus.com/storage/RandomStorage/RateThisApp1.png "Lane Splitter Example")

![Words With Friends Example](http://nippysaurus.com/storage/RandomStorage/RateThisApp2.png "Words With Friends Example")

![Cut The Rope Example](http://nippysaurus.com/storage/RandomStorage/RateThisApp3.png "Cut The Rope Example")

![Things Example](http://nippysaurus.com/storage/RandomStorage/RateThisApp4.png "Things Example")

![The Heist Example](http://nippysaurus.com/storage/RandomStorage/RateThisApp5.png "The Heist Example")

![Kinetic Example](http://nippysaurus.com/storage/RandomStorage/RateThisApp6.png "Kinetic Example")
