//
//  EditViewController.h
//  Overdue
//
//  Created by Andy Lee on 5/12/2014.
//  Copyright (c) 2014 Appfinity Creations. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"

@protocol EditViewControllerDelegate <NSObject>

-(void)didUpdateTask;

@end

@interface EditViewController : UIViewController <UITextFieldDelegate, UITextViewDelegate>

@property (strong, nonatomic) Task *task;
@property (weak, nonatomic) id <EditViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)saveBarButtonItemPressed:(UIBarButtonItem *)sender;

@end
