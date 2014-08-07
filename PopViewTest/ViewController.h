//
//  ViewController.h
//  PopViewTest
//
//  Created by Dacio Leal Rodriguez on 07/08/14.
//  Copyright (c) 2014 Dacio Leal Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPopoverControllerDelegate>

@property (strong, nonatomic) UIPopoverController *popoverController;

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
- (IBAction)pushButton:(UIButton *)sender;

@end
