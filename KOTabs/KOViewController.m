//
//  KOViewController.m
//  KOTabs
//
//  Created by Adam Horacek on 05.08.12.
//  Copyright (c) 2012 Adam Horacek, Kuba Brecka
//
//  Website: http://www.becomekodiak.com/
//  github: http://github.com/adamhoracek/KOTabs
//	Twitter: http://twitter.com/becomekodiak
//  Mail: adam@becomekodiak.com, kuba@becomekodiak.com
//
//  Permission is hereby granted, free of charge, to any person
//  obtaining a copy of this software and associated documentation
//  files (the "Software"), to deal in the Software without
//  restriction, including without limitation the rights to use,
//  copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the
//  Software is furnished to do so, subject to the following
//  conditions:
//
//  The above copyright notice and this permission notice shall be
//  included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
//  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
//  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
//  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
//  OTHER DEALINGS IN THE SOFTWARE.
//

#import "KOViewController.h"
#import "KOTabs.h"
#import "KOTabView.h"

@implementation KOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	KOTabView *tabView1 = [[KOTabView alloc] initWithFrame:self.view.bounds];
	[tabView1 setBackgroundColor:[UIColor purpleColor]];
	[tabView1 setIndex:0];
	[tabView1 setName:@"tabView1"];
	
	KOTabView *tabView2 = [[KOTabView alloc] initWithFrame:self.view.bounds];
	[tabView2 setBackgroundColor:[UIColor greenColor]];
	[tabView2 setIndex:1];
	[tabView2 setName:@"tabView1"];
	
	KOTabView *tabView3 = [[KOTabView alloc] initWithFrame:self.view.bounds];
	[tabView3 setBackgroundColor:[UIColor purpleColor]];
	[tabView3 setIndex:2];
	[tabView3 setName:@"tabView1"];
	
	NSMutableArray *tabViews = [NSMutableArray arrayWithObjects:tabView1, tabView2, tabView3, nil];
	
	KOTabs *tabs = [[KOTabs alloc] initWithFrame:self.view.bounds];
	[tabs setDelegate:(id<KOTabsDelegate>)self];
	
	[tabs setTabViews:tabViews];
	[tabs setActiveBarIndex:0];
	[tabs setActiveViewIndex:0];
	
	[self.view addSubview:tabs];
}

#pragma mark - KOTabbedViewDelegate

- (void)tabs:(KOTabs *)tabs didSwitchItem:(id)item
{
	
}

- (void)tabs:(KOTabs *)tabs didCloseItem:(id)item
{
	
}

@end
