//
//  ChallengeDataSourceAppDelegate.h
//  ChallengeDataSource
//
//  Created by Shawn Hooton on 2/9/14.
//  Copyright (c) 2014 Sixpanel LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ChallengeDataSourceAppDelegate : NSObject <NSApplicationDelegate> {
    NSMutableArray *_tasks;
}

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *task;
@property (weak) IBOutlet NSTableView *tableView;



- (IBAction)addTask:(id)sender;

@end
