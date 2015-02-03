//
//  ViewController.h
//  Overdue
//
//  Created by Andy Lee on 5/12/2014.
//  Copyright (c) 2014 Appfinity Creations. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddTaskViewController.h"
#import "DetailedTaskViewController.h"

@interface ViewController : UIViewController <AddTaskViewControllerDelegate, UITableViewDataSource, UITableViewDelegate, DetailedTaskViewControllerDelegate>

@property (strong, nonatomic) NSMutableArray *taskObjects;

@property (strong, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)reorderBarButtonItemPressed:(UIBarButtonItem *)sender;
- (IBAction)addTaskBarButtonItemPressed:(UIBarButtonItem *)sender;


@end

