//
//  PopViewController.h
//  PopViewTest
//
//  Created by Dacio Leal Rodriguez on 07/08/14.
//  Copyright (c) 2014 Dacio Leal Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PopViewController : UIViewController 

@property (weak, nonatomic) IBOutlet UIDatePicker *picker;
- (IBAction)pushButton:(UIButton *)sender;
@end
