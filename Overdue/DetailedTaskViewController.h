//
//  DetailedTaskViewController.h
//  Overdue
//
//  Created by Andy Lee on 5/12/2014.
//  Copyright (c) 2014 Appfinity Creations. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"
#import "EditViewController.h"

@protocol DetailedTaskViewControllerDelegate <NSObject>

-(void)updateTask;

@end

@interface DetailedTaskViewController : UIViewController <EditViewControllerDelegate>

@property (strong, nonatomic) Task *task;
@property (weak, nonatomic) id <DetailedTaskViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *dateLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailLabel;

- (IBAction)editBarButtonItemPressed:(UIBarButtonItem *)sender;

@end
