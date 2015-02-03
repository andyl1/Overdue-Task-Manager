//
//  Task.h
//  Overdue
//
//  Created by Andy Lee on 6/12/2014.
//  Copyright (c) 2014 Appfinity Creations. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *details;
@property (strong, nonatomic) NSDate *date;
@property (nonatomic) BOOL isCompleted;

-(id)initWithData: (NSDictionary *)data;

@end
