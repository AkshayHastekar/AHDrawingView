//
//  DrawingImageViewController.m
//  AHDrawingViewDemo
//
//  Created by Akshay Hastekar on 3/30/17.
//  Copyright © 2017 Akshay Hastekar. All rights reserved.
//

#import "DrawingImageViewController.h"

@interface DrawingImageViewController ()

@end

@implementation DrawingImageViewController

#pragma mark - View's life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _imageViewDrawing.image = _imageDrawing;
}

#pragma mark - UIButton Action
- (IBAction)actionOnback:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
