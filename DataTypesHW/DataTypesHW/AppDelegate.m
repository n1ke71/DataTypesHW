//
//  AppDelegate.m
//  DataTypesHW
//
//  Created by n1ke71 on 29.08.17.
//  Copyright © 2017 n1ke71. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    NSMutableArray* pointsArray = [[NSMutableArray alloc]init];
    
    CGPoint point = CGPointZero;
    CGRect rect = CGRectMake(3, 3, 3, 3);
    
    for (int i = 0; i<=20; i++) {
        
        point = CGPointMake(arc4random()%11, arc4random()%11);
        
        NSLog(@"%.0f %.0f",point.x,point.y);
        
        [pointsArray addObject:[NSValue valueWithCGPoint:point]];
        
   
    }
    
    
    for (NSValue* value in pointsArray) {
    
        CGPoint p = [value CGPointValue];
       
        if (CGRectContainsPoint(rect, p )) {
            
            NSLog(@"Point %.0f %.0f inside the rect !",p.x,p.y);
        }
        
    }
    
    
    NSNumber* fVal = [NSNumber numberWithFloat:3.14f];
    NSValue*  rVal = [NSValue valueWithCGRect:CGRectMake(1, 1, 3, 3)];
    
    NSArray* arrayOfValues = [NSArray arrayWithObjects:fVal,rVal,nil];
    
    NSLog(@"%@ %@",[[arrayOfValues firstObject] description],[[arrayOfValues lastObject] description] );
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
