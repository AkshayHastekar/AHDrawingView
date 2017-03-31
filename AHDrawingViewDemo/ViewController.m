//
//  ViewController.m
//  FreeHandDrawingDemo
//
//  Created by Akshay Hastekar on 3/27/17.
//  Copyright © 2017 Akshay Hastekar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - View's life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationController.navigationBar.hidden = YES;
    // configure drawing view
    _viewDrawing.lineColor = [UIColor blackColor];
    _viewDrawing.lineWidth = 2.0;
    _viewDrawing.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:102.0/255.0 alpha:1.0];
    
}

#pragma mark - UIButton action
- (IBAction)clear:(id)sender
{
    [_viewDrawing clearDrawing];
}
- (IBAction)getImage:(id)sender
{
    [self performSegueWithIdentifier:@"DrawingImageViewController" sender:nil];
}

#pragma mark - segue
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIImage *img = [_viewDrawing getDrawingImage];// this 'getDrawingImage' method returns UIImage object
    DrawingImageViewController *vc = [segue destinationViewController];
    vc.imageDrawing = img;
}

@end
