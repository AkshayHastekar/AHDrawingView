//
//  AHDrawingView.m
//  AHDrawingViewDemo
//
//  Created by Akshay Hastekar on 3/27/17.
//  Copyright © 2017 Akshay Hastekar. All rights reserved.
//

#import "AHDrawingView.h"

@implementation AHDrawingView
{
    UIBezierPath *path;
    CGPoint touchPoint;
    CGPoint startingPoint;
    UIImage *drawingImage;// this object will be returned for the drawing image when "getDrawingImage" will be called
}

#pragma mark - Drawing Method
- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    [self initialization];
}

#pragma mark - awake from nib
-(void)awakeFromNib
{
    [super awakeFromNib];
//    path = [UIBezierPath bezierPath];
    [self initialization];
}

#pragma mark - Initialization Methods
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self)
    {
        [self initialization];
    }
    return self;
}

-(void)initialization
{
    self.clipsToBounds = true;
    self.multipleTouchEnabled = NO;
    
    if(_lineColor == nil)
    {
        _lineColor = [UIColor blueColor];
    }
    if(_lineWidth == 0)
    {
        _lineWidth = 2.0;
    }
}

#pragma mark - UIView Touch Methods
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches] anyObject];
    startingPoint = [touch locationInView:self];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches] anyObject];
    touchPoint = [touch locationInView:self];
    path = nil;
    path = [UIBezierPath bezierPath];
    [path moveToPoint:startingPoint];
    [path addLineToPoint:touchPoint];
    startingPoint=touchPoint;
    
    [self addShapeLayer];
    
}
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self drawImage];
}
-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesCancelled:touches withEvent:event];
}

// adding shapelayer
-(void)addShapeLayer
{
    CAShapeLayer *shapelayer = [[CAShapeLayer alloc]init];
    shapelayer.path = path.CGPath;
    shapelayer.strokeColor = [_lineColor CGColor] ;
    shapelayer.lineWidth = _lineWidth;
    shapelayer.fillColor = [[UIColor clearColor] CGColor];
    [self.layer addSublayer:shapelayer];
    [self setNeedsDisplay];
}

// method to clear drawing
-(void)clearDrawing
{
    drawingImage = nil;
    [path removeAllPoints];
    self.layer.sublayers = nil;
    [self setNeedsDisplay];
}
// method to draw an image
-(void)drawImage
{
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.opaque, 0.0);
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:NO];
    drawingImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
}

// method to get drawing image
-(UIImage*)getDrawingImage
{
    return drawingImage;
}
@end
