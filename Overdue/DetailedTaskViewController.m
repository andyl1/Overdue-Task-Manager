//
//  DetailedTaskViewController.m
//  Overdue
//
//  Created by Andy Lee on 5/12/2014.
//  Copyright (c) 2014 Appfinity Creations. All rights reserved.
//

#import "DetailedTaskViewController.h"

@interface DetailedTaskViewController ()

@end

@implementation DetailedTaskViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleLabel.text = self.task.title;
    self.detailLabel.text = self.task.details;
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSString *stringFromDate  = [formatter stringFromDate:self.task.date];
    
    self.dateLabel.text = stringFromDate;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.destinationViewController isKindOfClass:[EditViewController class]]) {
        EditViewController *editViewController = segue.destinationViewController;
        editViewController.task = self.task;
        editViewController.delegate = self;
    }
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

- (IBAction)editBarButtonItemPressed:(UIBarButtonItem *)sender {
    [self performSegueWithIdentifier:@"toEditTaskViewControllerSegue" sender:nil];
}

-(void)didUpdateTask {
    self.titleLabel.text = self.task.title;
    self.detailLabel.text = self.task.details;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
     NSString *stringFromDate = [formatter stringFromDate:self.task.date];
     self.dateLabel.text = stringFromDate;
    
    [self.navigationController popViewControllerAnimated:YES];
    
    [self.delegate updateTask];
}
@end
