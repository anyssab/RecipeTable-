//
//  ViewController.m
//  SimpleTableProject
//
//  Created by Anyssa Buchanan on 2/20/14.
//  Copyright (c) 2014 Anyssa Buchanan. All rights reserved.
//

#import "ViewController.h"

@interface UIViewController ()

@end

@implementation SimpleTableViewController
{
    NSArray *recipes;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    recipes = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"ham and egg sandwich", @"Creme Brulee", @"White chocolare donut", @"Starbucks coffee", @"vegetable curry", @"Instant noodle with egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];
    
    
}
	// Do any additional setup after loading the view, typically from a nib.

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
