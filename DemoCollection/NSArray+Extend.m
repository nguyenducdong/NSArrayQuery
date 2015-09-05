//
//  NSArray+Extend.m
//  DemoCollection
//
//  Created by Dong Nguyen Duc on 9/5/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "NSArray+Extend.h"

@implementation NSArray (Extend)

+(NSArray *)createArrayNotElementDuplicateWith:(NSArray *)arr{
    //Check duplicate
    NSMutableArray *teamBarcelona = [NSMutableArray array];
    for (id obj in arr) {
        if (![teamBarcelona containsObject:obj]) {
            [teamBarcelona addObject:obj];
        }
    }
    return teamBarcelona;
}

@end
