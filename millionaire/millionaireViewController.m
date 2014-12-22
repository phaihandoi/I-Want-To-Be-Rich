//
//  millionaireViewController.m
//  millionaire
//
//  Created by H*D on 12/16/14.
//  Copyright (c) 2014 duyPhan. All rights reserved.
//

#import "millionaireViewController.h"

@interface millionaireViewController ()

@end

@implementation millionaireViewController

- (void)viewDidLoad{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self funTimedown:10];
    //NSlog([NSString stringWithFormat:@"%@"],[self arrangeAnswer]);
    
    
    NSString *stringQuestio = @"Con gà có mấy chân ?";
    NSDictionary *dictAnswer = @{@"4":@"false", @"3":@"fasle", @"2":@"true", @"1": @"false"};
    NSMutableArray *tempArray = [NSMutableArray new];
    for (NSDictionary *dict in dictAnswer) {
        [tempArray addObject:dict];
    }
    
    NSMutableArray *dataDisplay = [NSMutableArray new];
    for (int i = 0; i < tempArray.count; i++) {
        int random = arc4random() % tempArray.count;
        [dataDisplay addObject:tempArray[random]];
        [tempArray removeObjectAtIndex:random];
    }
    
    for (int i = 0; i < dataDisplay.count; i ++) {
        NSDictionary *d = dataDisplay[i];
        //NSArray *a = [d allValues];
        
        NSLog(@"Cau tra loi : %@",d);
        NSLog(@"1");
    }
    
}

-(void) funTimedown: (int) time{
    repeatTime = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timeDown) userInfo:nil repeats:YES];
    timeDown = time;
}

-(void) timeDown{
    timeDown--;
    if(timeDown == 0){
        [repeatTime invalidate];
    }
}

-(NSMutableArray) arrangeAnswer: (NSString) *aswtrue anserFalse: (NSMutableArray) *aswfalse{
    NSDictionary *dictAnser = @{aswTrue: @"true"};
    
}

//
//-(int) maxDown: (int)timeIn {
//    if(timeDown == 0){
//        timeDown = timeIn;
//    }
//    else{
//        return timeIn--;
//    }
//}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
