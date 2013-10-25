//
//  ViewController.m
//  iOS7-ToolbarTouch
//
//  Created by Yasuhiro Inami on 2013/10/25.
//  Copyright (c) 2013年 Yasuhiro Inami. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) CALayer* guideLayer;
@end

@implementation ViewController

- (IBAction)handleBarButtonItem:(id)sender
{
    NSLog(@"tapped!");
    
    // just for notifying...
    self.title = @"tapped!";
    double delayInSeconds = 1.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        self.title = nil;
    });
}

@end
