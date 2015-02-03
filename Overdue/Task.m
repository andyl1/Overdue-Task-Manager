//
//  Task.m
//  Overdue
//
//  Created by Andy Lee on 6/12/2014.
//  Copyright (c) 2014 Appfinity Creations. All rights reserved.
//

#import "Task.h"

@implementation Task

-(id)initWithData: (NSDictionary *)data {
    self = [super init];
    
    if (self) {
        self.title = data[TASK_TITLE];
        self.details = data[TASK_DETAILS];
        self.date = data[TASK_DATE];
        self.isCompleted = [data[TASK_COMPLETION] boolValue];
    }
    return self;
}

-(id)init {
    self = [self initWithData:nil];
    
    return self;
}


@end
