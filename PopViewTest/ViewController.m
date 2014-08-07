//
//  ViewController.m
//  PopViewTest
//
//  Created by Dacio Leal Rodriguez on 07/08/14.
//  Copyright (c) 2014 Dacio Leal Rodriguez. All rights reserved.
//

#import "ViewController.h"
#import "PopViewController.h"

@interface ViewController ()
{
    NSDate *finishTime;
}

@end

@implementation ViewController

@synthesize popoverController;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSNotificationCenter *defaultCenter = [NSNotificationCenter defaultCenter];
    [defaultCenter addObserver:self selector:@selector(setFinishTime:) name:@"FinishTimeSelected" object:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushButton:(UIButton *)sender {
    
    CGRect popoverRect = CGRectMake(sender.frame.origin.x, sender.frame.origin.y, 420,150);
    PopViewController *contentPVC = [[PopViewController alloc] initWithNibName:@"PopViewController" bundle:nil];
    UIPopoverController *popVC = [[UIPopoverController alloc] initWithContentViewController:contentPVC];
    popVC.delegate = self;
    popVC.popoverContentSize = CGSizeMake(420, 150);
    
    self.popoverController = popVC;
    
    [self.popoverController presentPopoverFromRect:popoverRect inView:self.view permittedArrowDirections:UIPopoverArrowDirectionLeft animated:YES];
    

}

- (void) setFinishTime: (NSNotification *) notification
{
    finishTime = [notification.userInfo objectForKey:@"finishTime"];
    [self.popoverController dismissPopoverAnimated:YES];
    _timeLabel.text = [NSString stringWithFormat:@"Time Selected:  %@", finishTime];
}


@end

