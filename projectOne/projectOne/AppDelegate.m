//
//  AppDelegate.m
//  projectOne
//
//  Created by Devona Ward on 1/9/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //First task: Create a variable using the float data type. Cast the float to an int and using NSLog, output both the initial float value as well as the int value.
    //Integers for work hours and total appointments.
    int appointments = 20;
    int shiftHours = 8;
    
    //Float to divide appointments by hours.
    float total = (float)appointments/(float)shiftHours;
    
    //NSLog showing shiftHours, and appoinments.
    NSLog(@"I have to work %d hours today.", shiftHours);
    NSLog(@"There are %d appointments for the day.", appointments);
    
    //NSLog showing the total of appointments divided by shiftHours.
    NSLog(@"Total breaks recommended from 20 appointments within 8 hours: %f breaks", total);
    //First task ended
    
    
    //Second task: Perform an AND, OR comparison. Use float, int and BOOL types. BOOL values should be YES or NO and written in all caps.
    //James and Mike both have devices. Their names equal the number of devices. Only Mike will owe money.
    int James = 2;
    int Mike = 1;
    float moneyOwe = 153.95;
    
    //If Mike is here to pickup his device, then isTrue will execute.
    BOOL isTrue = ((Mike >= 1) || (moneyOwe <= 200));
    if(isTrue){
        NSLog(@"James needs an appointment for each device. He has %d devices.", James);
        NSLog(@"Mike is here to pickup his Mac.");
        NSLog(@"He had his hard drive and display replaced. Mike has a balance of %f that must be paid before he leaves.", moneyOwe);
              }
    
    //If James has an appointment, then Mike's device isn't ready. isFalse will execute.
    BOOL isFalse = ((James <= 1) && (moneyOwe >= 300));
    if(isFalse){
        NSLog(@"James has an appointment.");
        NSLog(@"Mike can not pickup his Mac because repairs are still in progress. His current balance is %f and can be paid now, or at pickup.", moneyOwe);
    }
    //Second task ended
    
    
    //Third task: Use an if, else if and else check using any of the data types of your choice.
    //If there is liquid inside the device, the scale is at a max of 6. If the device is cracked, the scale is at a max of 5.
    int liquidDmg = 6;
    int crackDmg = 5;
    
    NSLog(@"My next customer has a few problems with his device.");
    
    if((liquidDmg > 0) && (crackDmg == 0))
    {
        NSLog(@"The device has liquid damage. There will be a charge for a replacement.");
    }
    else if ((crackDmg > 0) && (liquidDmg > 0))
    {
        NSLog(@"The device has cracks and liquid damage. There will be a charge for a replacement.");
    }
    else
    {
        NSLog(@"It seems may be a few software issues.");
    }
    
    //Third task ended
    
    
    return YES;
    
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

