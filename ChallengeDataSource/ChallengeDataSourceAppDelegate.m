//
//  ChallengeDataSourceAppDelegate.m
//  ChallengeDataSource
//
//  Created by Shawn Hooton on 2/9/14.
//  Copyright (c) 2014 Sixpanel LLC. All rights reserved.
//

#import "ChallengeDataSourceAppDelegate.h"

@implementation ChallengeDataSourceAppDelegate

- (id)init {
    self = [super init];
    if (self)
    {
        _tasks = [NSMutableArray array];
    }
    return self;
}

- (IBAction)addTask:(id)sender {
    NSString *taskName = [_task stringValue];
    [_tasks addObject:taskName];
    NSLog(@"Added task '%@'", taskName);
    [_task setStringValue:@""];
    [_tableView reloadData];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tv
{
    NSUInteger numTasks = [_tasks count];
    NSLog(@"The count is %lu", (unsigned long)numTasks);
    return numTasks;
}

- (id)tableView:(NSTableView *)tv objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    return [_tasks objectAtIndex:row];
}

- (void)tableView:(NSTableView *)tv setObjectValue:(id)task forTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)row
{
    [_tasks replaceObjectAtIndex:row withObject:task];
    [_tableView reloadData];
}

- (BOOL)respondsToSelector:(SEL)aSelector
{
    NSString *methodName = NSStringFromSelector(aSelector);
    NSLog(@"respondsToSelector:%@", methodName);
    return [super respondsToSelector:aSelector];
}

@end
