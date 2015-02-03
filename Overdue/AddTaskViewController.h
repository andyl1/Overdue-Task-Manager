//
//  AddTaskViewController.h
//  Overdue
//
//  Created by Andy Lee on 5/12/2014.
//  Copyright (c) 2014 Appfinity Creations. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"

@protocol AddTaskViewControllerDelegate <NSObject>

-(void)didCancel;
-(void)didAddTask:(Task *)task;

@end

@interface AddTaskViewController : UIViewController <UITextViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) id <AddTaskViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

-(IBAction)addTaskButtonPressed:(UIButton *)sender;
-(IBAction)cancelButtonPressed:(UIButton *)sender;

@end
