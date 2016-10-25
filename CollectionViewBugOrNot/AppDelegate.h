//
//  AppDelegate.h
//  CollectionViewBugOrNot
//
//  Created by Christian Gregersen on 25/10/16.
//  Copyright © 2016 Test A/S. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

