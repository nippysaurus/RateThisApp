//
//  RateThisAppAppDelegate.h
//  RateThisApp
//
//  Created by Michael Dawson on 23/06/11.
//  Copyright 2011 Nippysaurus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RateThisAppDialog.h"

@class RateThisAppViewController;

@interface RateThisAppAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet RateThisAppViewController *viewController;

@end