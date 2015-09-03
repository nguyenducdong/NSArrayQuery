//
//  CreateDictionary.m
//  DemoCollection
//
//  Created by Cuong Trinh on 7/13/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "CreateDictionary.h"

@interface CreateDictionary ()

@end

@implementation CreateDictionary

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary* dic01 = [NSDictionary dictionaryWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"dictionary" ofType:@"plist"]];
    NSLog(@"%@", dic01);
    
    NSDictionary* dic02 = @{@"model": @"Exciter 150", @"color": @"black", @"Fuel Injection": @true};
    NSLog(@"%@", dic02);
    
    NSDictionary *dic03 = [[NSDictionary alloc] initWithObjectsAndKeys:
                           @"Exciter 150", @"model", @"black", @"color", @true, @"Fuel Injection", nil];
    NSLog(@"%@", dic03);
    
    if (dic03[@"model"] == [dic03 objectForKey:@"model"]) {
        NSLog(@"They are same");
    }
    
    NSLog(@"dic03 all keys %@" , [dic03 allKeys]);
    NSLog(@"dic03 all values %@" , [dic03 allValues]);
    
    id sharedKeys = [NSDictionary sharedKeySetForKeys:@[@"name", @"job"]];
    
    NSMutableDictionary *dic04 = [NSMutableDictionary dictionaryWithSharedKeySet:sharedKeys];
    dic04[@"name"] = @"Cuong";
    dic04[@"job"] = @"Developer";
    
    NSMutableDictionary *dic05 = [NSMutableDictionary dictionaryWithSharedKeySet:sharedKeys];
    dic05[@"name"] = @"Zuckerber";
    dic05[@"job"] = @"Leader";

    
    NSLog(@"%@", [dic04 allKeys]); NSLog(@"%@", [dic05 allKeys]);
    
    NSLog(@"count %ld", [dic05 count]);
                           
}


@end
