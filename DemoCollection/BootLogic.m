//
//  BootLogic.m
//  TechmasterApp
//
//  Created by techmaster on 9/7/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

#import "BootLogic.h"
#import "MainScreen.h"


@implementation BootLogic
+ (void) boot: (UIWindow*) window
{
    MainScreen* mainScreen = [[MainScreen alloc] initWithStyle:UITableViewStyleGrouped];
    //--------- From this line, please customize your menu data -----------
    NSDictionary* basic = @{SECTION: @"NSArray", MENU: @[
                                    @{TITLE: @"Create", CLASS: @"CreateArray"},
                                    @{TITLE: @"Query", CLASS: @"QueryArray"},
                                    @{TITLE: @"Send Message", CLASS: @"SendMessage"},
                                    @{TITLE: @"Mutable Array", CLASS: @"MutableArray"},
                          ]};
    NSDictionary* intermediate = @{SECTION: @"NSDictionary", MENU: @[
                                    @{TITLE: @"Create", CLASS: @"CreateDictionary"}
                                  ]};
    NSDictionary* advanced = @{SECTION: @"Advanced", MENU: @[
                                    @{TITLE: @"Advanced C", CLASS: @"AdvancedC"}
                             ]};
    
    mainScreen.menu = @[basic, intermediate, advanced];
    mainScreen.title = @"Collection Programming";
    mainScreen.about = @"This is Collection Programming in Objecitve_C";
    //--------- End of customization -----------
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController: mainScreen];
    
    window.rootViewController = nav;
}
@end
