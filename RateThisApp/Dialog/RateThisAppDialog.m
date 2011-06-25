//
//  RateThisAppDialog.m
//  RateThisApp
//
//  Created by Michael Dawson on 23/06/11.
//  Copyright 2011 Nippysaurus. All rights reserved.
//

#import "RateThisAppDialog.h"

@interface RateThisAppDialog ()

+ (void)rateNow;

+ (void)rateLater;

+ (void)rateNever;

- (void)showDialogIfRequired;

@end

@implementation RateThisAppDialog

#pragma mark - Init

- (id)init
{
    self = [super init];
    
    if (self)
    {
        [self showDialogIfRequired];
    }
    
    return self;
}

#pragma mark - UIAlertViewDelegate

- (void)alertView:(UIAlertView*)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    // TODO make this a bit tidier
    if (buttonIndex == 0)
    {
        if ([ALERT_BUTTON_1_ACTION isEqualToString:@"RATE_NOW"] == YES)
            [RateThisAppDialog rateNow];
        if ([ALERT_BUTTON_1_ACTION isEqualToString:@"RATE_LATER"] == YES)
            [RateThisAppDialog rateLater];
        if ([ALERT_BUTTON_1_ACTION isEqualToString:@"RATE_NEVER"] == YES)
            [RateThisAppDialog rateNever];
    }
    if (buttonIndex == 1)
    {
        if ([ALERT_BUTTON_2_ACTION isEqualToString:@"RATE_NOW"] == YES)
            [RateThisAppDialog rateNow];
        if ([ALERT_BUTTON_2_ACTION isEqualToString:@"RATE_LATER"] == YES)
            [RateThisAppDialog rateLater];
        if ([ALERT_BUTTON_2_ACTION isEqualToString:@"RATE_NEVER"] == YES)
            [RateThisAppDialog rateNever];
    }
    if (buttonIndex == 2)
    {
        if ([ALERT_BUTTON_2_ACTION isEqualToString:@"RATE_NOW"] == YES)
            [RateThisAppDialog rateNow];
        if ([ALERT_BUTTON_2_ACTION isEqualToString:@"RATE_LATER"] == YES)
            [RateThisAppDialog rateLater];
        if ([ALERT_BUTTON_2_ACTION isEqualToString:@"RATE_NEVER"] == YES)
            [RateThisAppDialog rateNever];
    }
}

#pragma mark - Actions

- (void)showDialogIfRequired
{
    BOOL appRatingDisabled = [[NSUserDefaults standardUserDefaults] boolForKey:@"app_rating_disabled"];
    NSInteger numberOfTimesLaunched = [[NSUserDefaults standardUserDefaults] integerForKey:@"number_of_times_launched"] + 1;
    
    #ifdef DEBUG
    
    NSString *debugMessage = [NSString stringWithFormat:@"Launches: %i", numberOfTimesLaunched];
    
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle: @"DEBUG INFO"
                          message: debugMessage
                          delegate: nil
                          cancelButtonTitle:@"Close"
                          otherButtonTitles:nil];
    
    [alert show];
    [alert release];
    
    #endif
    
    if (appRatingDisabled == YES)
        return;
    
    // possibly store an override for "after_x_launches" in the defaults collection after prompting to rate the app later?
    
    if (numberOfTimesLaunched >= PROMPT_AFTER_X_LAUNCHES)
    {
        #ifdef VERTICAL_LAYOUT
        
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle: ALERT_TITLE
                              message: ALERT_TEXT
                              delegate: self
                              cancelButtonTitle:ALERT_BUTTON_1_TEXT
                              otherButtonTitles:ALERT_BUTTON_2_TEXT, ALERT_BUTTON_3_TEXT, nil];

        #else
        
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle: ALERT_TITLE
                              message: ALERT_TEXT
                              delegate: self
                              cancelButtonTitle:ALERT_BUTTON_1_TEXT
                              otherButtonTitles:ALERT_BUTTON_2_TEXT, nil];
        
        #endif
        
        [alert show];
        [alert release];
    }
    
    [[NSUserDefaults standardUserDefaults] setInteger:numberOfTimesLaunched forKey:@"number_of_times_launched"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)rateNow
{
    NSURL *url = [NSURL URLWithString:APP_STORE_LINK];
    
    BOOL launchSuccess = [[UIApplication sharedApplication] openURL:url];
    
    if(launchSuccess == NO)
    {
        NSLog(@"Failed to open URL (this is normal in the iSO Simulator ...)");
    }

    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"app_rating_disabled"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)rateLater
{
    // set back to zero
    [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:@"number_of_times_launched"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)rateNever
{
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"app_rating_disabled"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end