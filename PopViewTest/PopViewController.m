//
//  PopViewController.m
//  PopViewTest
//
//  Created by Dacio Leal Rodriguez on 07/08/14.
//  Copyright (c) 2014 Dacio Leal Rodriguez. All rights reserved.
//

#import "PopViewController.h"


@interface PopViewController ()

@end

@implementation PopViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _picker.timeZone = [NSTimeZone timeZoneWithName:@"UTC"];
        
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushButton:(UIButton *)sender {
    
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    NSDate *date = _picker.date;
    
    [dict setValue:date forKey:@"finishTime"];
    NSNotificationCenter *defaultCenter = [NSNotificationCenter defaultCenter];
    [defaultCenter postNotificationName:@"FinishTimeSelected" object:self userInfo:dict];
    
}
@end
