//
//  DrawingImageViewController.h
//  AHDrawingViewDemo
//
//  Created by Akshay Hastekar on 3/30/17.
//  Copyright © 2017 Akshay Hastekar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrawingImageViewController : UIViewController
@property(strong,nonatomic) UIImage *imageDrawing;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewDrawing;

@end
