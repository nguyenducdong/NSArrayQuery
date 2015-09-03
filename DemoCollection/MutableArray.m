//
//  MutableArray.m
//  DemoCollection
//
//  Created by Cuong Trinh on 7/13/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "MutableArray.h"

@interface MutableArray ()

@end

@implementation MutableArray

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray * arr1 = [NSMutableArray arrayWithArray:@[@"ABC", @3.14, @true]];
    UIImage* photo = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://techmaster.vn/theme_resources/frontend/tech/img/logo.png"]]];
    [arr1 addObject: photo];
    
    NSLog(@"%ld", [arr1 count]);
    
    //[arr1 replaceObjectAtIndex:0 withObject:<#(id)#>]
    arr1[0] = photo;
    NSLog(@"%@", arr1[0]);
    
    [arr1 replaceObjectAtIndex:0 withObject:@100];
    NSLog(@"%@", arr1[0]);
    
    [arr1 insertObject:@"Hello" atIndex:0];
    
    NSLog(@"----------------");
    [arr1 enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"%@", obj);
    }];
}


@end
