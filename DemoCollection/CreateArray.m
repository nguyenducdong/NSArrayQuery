//
//  CreateArray.m
//  DemoCollection
//
//  Created by Cuong Trinh on 7/10/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "CreateArray.h"

@interface CreateArray ()

@end

@implementation CreateArray

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray* arr1 = [[NSArray alloc] init]; // NSArray* arr1 = [NSArray new];
    NSLog(@"arr1 has %ld elements", [arr1 count]);
    
    NSArray* arr2 = @[@"ABC", @3.14, [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://techmaster.vn/theme_resources/frontend/tech/img/logo.png"]]]];
    NSLog(@"arr2 has %ld elements", arr2.count);
    
    
    NSArray* arr3 = [NSArray arrayWithArray:arr2];  //arr3 and arr2 point to different memory addresses
    NSLog(@"%p - %p", arr2, arr3);
    NSLog(@"%p - %p", arr2[2], arr3[2]);  //arr3 and arr2 contains same elements

    NSArray* arr4 = [NSArray arrayWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"]];
    NSLog(@"%@", arr4);
    for (NSDictionary* item in arr4) {
        NSLog(@"%@ - %@", item[@"name"], item[@"job"]);
    }
    
    
    //You need to upload real plist to public web site
    NSArray* arr5 = [NSArray arrayWithContentsOfURL:[NSURL URLWithString:@"http://vnexpress.net/rss/tin-moi-nhat.rss"]];
    
    NSLog(@"%@", arr5);
    
    NSArray* arr6 = [NSArray arrayWithObjects:@1, @2, @3, @4, nil];
    NSLog(@"%@", arr6);
    
    
    
    //This is not allowed in ARC: Automatic Reference Counting
    //int integerCArray[] = {1, 2, 3, 4, 5};
    //NSArray* arr7 = [[NSArray alloc] initWithObjects: integerCArray count:3];
    NSArray *players = @[@"GK Marc-André ter Stegen",
                         @"DF Gerard Piqué",
                         @"MF Ivan Rakitić",
                         @"MF Sergio Busquets",
                         @"FW Pedro Rodríguez",@"MF Andrés Iniesta",
                         @"FW Luis Suárez",@"FW Lionel Messi",
                         @"FW Neymar",@"MF Rafinha",
                         @"GK Claudio Bravo",@"MF Javier Mascherano",
                         @"DF Marc Bartra",@"DF	Douglas",
                         @"DF Jordi Alba",@"MF Sergi Roberto",
                         @"DF Adriano",@"DF Dani Alves",
                         @"DF Thomas Vermaelen",@"DF Jérémy Mathieu",
                         @"GK Jordi Masip",@"MF	Alex Song",
                         @"MF Arda Turan",@"MF Aleix Vidal"];
    NSMutableArray *eleventPlayer = [NSMutableArray array];
    NSMutableArray *duplicate_arr = [NSMutableArray array];
    NSMutableArray *teamBarcelona = [NSMutableArray array];

    for (NSInteger index = 0; index < 11; index++) {
        int rand = arc4random_uniform(players.count);
        [eleventPlayer addObject:players[rand]];
        
    }
    //Check duplicate
    for (id obj in eleventPlayer) {
        if (![teamBarcelona containsObject:obj]) {
            [teamBarcelona addObject:obj];
        }
    }
    
    for (id obj in players) {
        if (![teamBarcelona containsObject:obj]) {
            [duplicate_arr addObject:obj];
        }
    }
    
    if (teamBarcelona.count < 11) {
        NSUInteger index = (11 - teamBarcelona.count);
        for (int x = 0; x < index; ++x) {
            int rand = arc4random_uniform(duplicate_arr.count);
            [teamBarcelona addObject:duplicate_arr[rand]];
        }
    }
    for (id obj in teamBarcelona) {
        NSLog(@"player: %@",obj);
    }
    
}



@end
