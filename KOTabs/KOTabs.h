//
//  KOTabbedView.h
//  Kodiak
//
//  Created by Adam Horacek on 26.02.12.
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

#import <UIKit/UIKit.h>
#import "KOTabView.h"

@class KOTabs;

@protocol KOTabsDelegate  <NSObject>

- (void)tabs:(KOTabs *)tabs didSwitchItem:(id)object;
- (void)tabs:(KOTabs *)tabs didCloseItem:(id)object;

@end

@interface KOTabs : UIView {
	NSMutableArray *_tabViews;
}

@property (nonatomic, strong) NSMutableArray *tabViews, *buttonViews;
@property (nonatomic, strong) UIScrollView *tabbedBar;
@property (nonatomic, strong) UIView *shadowView, *tabbedView;
@property (nonatomic, strong) UIImageView *leftCanc, *rightCanc;
@property (nonatomic) NSInteger activeBarIndex, activeViewIndex;
@property (nonatomic, assign) id <KOTabsDelegate> delegate;

- (void)closeButtonAtIndex:(id)sender;
- (void)selectButtonAtIndex:(id)sender;
- (KOTabView *)activeTabView;

@end
