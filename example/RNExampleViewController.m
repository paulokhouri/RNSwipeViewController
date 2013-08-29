//
//  RNExampleViewController.m
//  RNSwipeViewController
//
//  Created by Ryan Nystrom on 10/31/12.
//  Copyright (c) 2012 Ryan Nystrom. All rights reserved.
//

#import "RNExampleViewController.h"

#define IS_IPAD UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad

@interface RNExampleViewController ()

@end

@implementation RNExampleViewController

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
	
    self.centerViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"centerViewController"];
    self.leftViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"leftViewController"];
    self.rightViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"rightViewController"];
    self.bottomViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"bottomViewController"];
    self.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"topViewController"];
    
    if (IS_IPAD) {
        self.leftVisibleWidth = 500;
        self.rightVisibleWidth = 300;
        self.bottomVisibleHeight = 500;
    }
    
    self.swipeDelegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Swipe delegate

- (void)swipeController:(RNSwipeViewController *)swipeController willShowController:(UIViewController *)controller {
    if (swipeController.leftViewController == controller) {
        NSLog(@"Will show left controller");
    } else if (swipeController.rightViewController == controller) {
        NSLog(@"Will show right controller");
    } else if (swipeController.centerViewController == controller) {
        NSLog(@"Will show center controller");
    } else if (swipeController.bottomViewController == controller) {
        NSLog(@"Will show bottom controller");
    } else if (swipeController.topViewController == controller) {
        NSLog(@"Will show top controller");
    }
}

- (void)swipeController:(RNSwipeViewController *)swipeController didShowController:(UIViewController *)controller {
    NSLog(@"did show");
}

@end
