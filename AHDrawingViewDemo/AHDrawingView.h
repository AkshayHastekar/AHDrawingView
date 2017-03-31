//
//  AHDrawingView.h
//  AHDrawingViewDemo
//
//  Created by Akshay Hastekar on 3/27/17.
//  Copyright © 2017 Akshay Hastekar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AHDrawingView : UIView

// properties
@property (nonatomic,strong) UIColor *lineColor;
@property (assign) CGFloat lineWidth;

// methods
-(instancetype)initWithFrame:(CGRect)frame;

// this method will clear the drawing on view.
-(void)clearDrawing;

// this method will return drawing image if there is drawing on view otherwise return nil.
-(UIImage*)getDrawingImage;
@end
