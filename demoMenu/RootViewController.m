//
//  RootViewController.m
//  demoMenu
//
//  Created by YTO on 14-4-14.
//  Copyright (c) 2014年 jhonyzhang. All rights reserved.
//

#import "RootViewController.h"
#import "DDMenuController.h"

#import "ThrViewController.h"
#import "SecViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController
@synthesize view1;

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


    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
    
    pan.delegate = (id<UIGestureRecognizerDelegate>)self;
    
    [view1 addGestureRecognizer:pan];
    

}


/*
 
     View的添加
     View添加手势
     View跟着手势进行走动
 
*/

#pragma mark - GestureRecognizers
- (void)pan:(UIPanGestureRecognizer*)gesture {
    
    if (gesture.state == UIGestureRecognizerStateBegan) {
        
        if([gesture velocityInView:self.view].x > 0) {
            
        } else {
            
        }
        
    }
    
    if (gesture.state == UIGestureRecognizerStateChanged) {
        
        CGPoint velocity = [gesture velocityInView:self.view];
        CGPoint translation = [gesture translationInView:self.view];
        
        NSLog(@"velocity==%ftranslation==%f",velocity.x, translation.x);
        
        
//        CGRect frame = view1.frame;
//        frame.origin.x = translation.x;
//        frame.origin.y = translation.y;
//        view1.frame=frame;
        
        
        gesture.view.center = CGPointMake(gesture.view.center.x + translation.x, gesture.view.center.y + translation.y);
        
        [gesture setTranslation:CGPointMake(0, 0) inView:view1];
    }
    else{
    
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
