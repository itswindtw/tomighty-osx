//
//  TYNotificationAgent.h
//  Tomighty
//
//  Created by Meng-Hsin Tung on 1/27/15.
//

#import <Foundation/Foundation.h>
#import "TYEventBus.h"

@interface TYNotificationAgent : NSObject

- (void)registerNotificationsWithEvents:(id <TYEventBus>)eventBus;

@end
