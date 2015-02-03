//
//  EditViewController.m
//  Overdue
//
//  Created by Andy Lee on 5/12/2014.
//  Copyright (c) 2014 Appfinity Creations. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()

@end

@implementation EditViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.textField.text = self.task.title;
    self.textView.text = self.task.details;
    self.datePicker.date = self.task.date;
    
    self.textField.delegate = self;
    self.textView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)saveBarButtonItemPressed:(UIBarButtonItem *)sender {
    [self updateTask];
    [self.delegate didUpdateTask];
}

#pragma mark - Helper Methods

-(void)updateTask {
    self.task.title = self.textField.text;
    self.task.details = self.textView.text;
    self.task.date = self.datePicker.date;
}

#pragma mark - UITextFieldDelegte

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.textField resignFirstResponder];
    return YES;
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if ([text isEqualToString:@"\n"]) {
        [self.textView resignFirstResponder];
        return NO;
    }
    return YES;
}
@end
