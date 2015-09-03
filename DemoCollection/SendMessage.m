//
//  SendMessage.m
//  DemoCollection
//
//  Created by Cuong Trinh on 7/12/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "SendMessage.h"
#import "Student.h"
@interface SendMessage ()

@end

@implementation SendMessage

- (void)viewDidLoad {
    [super viewDidLoad];
    Student* a = [[Student alloc] init:@"John Kim" and:@"01"];
    Student* b = [[Student alloc] init:@"Jack Ma" and:@"02"];
    Student* c = [[Student alloc] init:@"James Hall" and:@"03"];
    
    NSArray* arr3 = @[a, b, c];
    
    [arr3 makeObjectsPerformSelector:@selector(sayYourName)];
    
    [arr3 enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [obj sayYourName];
    }];
}


@end
