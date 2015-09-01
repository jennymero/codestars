//
//  ViewController.h
//  PlacesToVisit
//
//  Created by JENNY MERO on 8/26/15.
//  Copyright (c) 2015 Jenny Mero. All rights reserved.
//

#import <UIKit/UIKit.h>
//Create a simple iPhone application that displays a list of items in a table view with custom images. Users should also be able to delete items from your table view.

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>//Protocols
//UITableViewDataSource links data and tableview UI
//UITableViewDelegate deals with the appearance of UITableView

@end

