//
//  RateThisAppDialog.h
//  RateThisApp
//
//  Created by Michael Dawson on 23/06/11.
//  Copyright 2011 Nippysaurus. All rights reserved.
//

#import <Foundation/Foundation.h>

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

@interface RateThisAppDialog : NSObject



@end