//
//  TYNotificationAgent.h
//  Tomighty
//
//  Created by Meng-Hsin Tung on 1/27/15.
//  Copyright (c) 2015 Gig Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TYEventBus.h"

@interface TYNotificationAgent : NSObject

- (void)registerNotificationsWithEvents:(id <TYEventBus>)eventBus;

@end
