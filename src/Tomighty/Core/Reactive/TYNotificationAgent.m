//
//  TYNotificationAgent.m
//  Tomighty
//
//  Created by Meng-Hsin Tung on 1/27/15.
//  Copyright (c) 2015 Gig Software. All rights reserved.
//

#import "TYNotificationAgent.h"
#import "TYTimerContext.h"

@implementation TYNotificationAgent

- (void)registerNotificationsWithEvents:(id<TYEventBus>)eventBus
{
    [eventBus subscribeTo:TIMER_STOP subscriber:^(id eventData) {
        [self showFinishNotificationWithContext:eventData];
    }];
}

- (void)showFinishNotificationWithContext:(id<TYTimerContext>)aContext
{
    NSString *title = [NSString stringWithFormat:@"%@ finished.", [aContext getName]];
    NSUserNotification *notification = [[NSUserNotification alloc] init];
    
    [notification setTitle:title];
    //[notification setSoundName:NSUserNotificationDefaultSoundName];
    [[NSUserNotificationCenter defaultUserNotificationCenter] deliverNotification:notification];
}

@end
