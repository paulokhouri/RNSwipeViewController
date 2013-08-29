//
//  RNUpViewController.m
//  RNSwipeViewController
//
//  Created by Paulo Khouri on 8/28/13.
//  Copyright (c) 2013 Ryan Nystrom. All rights reserved.
//

#import "RNTopViewController.h"

@interface RNTopViewController ()

@end

@implementation RNTopViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)changedPercentReveal:(NSInteger)percent {
    //NSLog(@"Bottom: %i",percent);
}

@end
