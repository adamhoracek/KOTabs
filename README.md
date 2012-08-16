KOTabs – iOS component for multiple tabs
========================================

With **KOTabs** you can easily create a tabbed document interface. The user can switch between tabs with a single tap. The tabs can be closed with the "x" icon in the corner. When there are more tabs than the screen can show, the whole bar can be scrolled to the side. It was developed for [Kodiak PHP](http://www.becomekodiak.com/), an app which allows you to write and run PHP code directly on the iPad.

To see the component in action, take a look at the video at [http://www.becomekodiak.com/](http://www.becomekodiak.com/) or try out app called [Kodiak PHP on the App Store](http://itunes.apple.com/us/app/kodiak-php/id542685332?ls=1&mt=8).

<img src="http://i.imgur.com/npej3.png">

Usage
-----

We included a demo project that shows how to use the component.

Firstly, include its header:

	#import "KOTabs.h"
	#import "KOTabView.h"

To use the component, initialize it and set its size to the whole screen, as its area should also include the area of the documents it shows:

	KOTabs *tabs = [[KOTabs alloc] initWithFrame:self.view.bounds];
	tabs.delegate = self;
	[self.view addSubview:tabs];

Now it's time to add some tabs into the components:

	KOTabView *tabView1 = [[KOTabView alloc] initWithFrame:self.view.bounds];
	tabView1.index = 0;
	tabView1.name = "first tab";

	NSMutableArray *tabViews = [NSMutableArray arrayWithObjects:tabView1, nil];
	tabs.tabView = tabViews;
	tabs.activeBarIndex = 0;
	tabs.activeViewIndex = 0;

If you want to have more tabs, simply create an array with more items.

And that's it!

Copyright and license
---------------------

This product is free and open source and it is distributed under the MIT License. See the file `LICENSE` for the complete text of the license.

Contact
-------

http://www.becomekodiak.com/<br />
http://www.twitter.com/becomekodiak/<br />
info@becomekodiak.com

