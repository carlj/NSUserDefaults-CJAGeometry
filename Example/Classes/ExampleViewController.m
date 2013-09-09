//
//  ExampleViewController.m
//  NSUserDefaults+Geometry
//
//  Created by Carl Jahn on 09.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import "ExampleViewController.h"
#import "NSUserDefaults+CJAGeometry.h"

@interface ExampleViewController ()

@end

@implementation ExampleViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  
  [defaults setPoint: CGPointMake(1, 20) forKey:@"PointKey"];

  CGPoint point = [defaults pointForKey: @"PointKey"];
  NSLog(@"point %@", NSStringFromCGPoint(point));
  

  [defaults setSize: (CGSize){20, 37} forKey:@"SizeKey"];
  
  CGSize size = [defaults sizeForKey: @"SizeKey"];
  NSLog(@"size %@", NSStringFromCGSize(size));

  
  [defaults setRect: (CGRect){1, 20, 23, 33} forKey:@"RectKey"];
  
  CGRect rect = [defaults rectForKey: @"RectKey"];
  NSLog(@"rect %@", NSStringFromCGRect(rect));

  
  [defaults setAffineTransform: CGAffineTransformIdentity forKey:@"AffineTransfomrKey"];
  CGAffineTransform affineTransform = [defaults affineTransformForKey: @"AffineTransfomrKey"];
  NSLog(@"AffineTransform %@", NSStringFromCGAffineTransform(affineTransform));

  
  [defaults setEdgeInsets: UIEdgeInsetsMake(0, 10, 4, 38) forKey:@"EdgeInsetsKey"];

  UIEdgeInsets edgeInsets = [defaults edgeInsetsForKey: @"EdgeInsetsKey"];
  NSLog(@"edgeInset %@", NSStringFromUIEdgeInsets(edgeInsets));

  
  [defaults setOffset: UIOffsetFromString(@"27.0,33.5") forKey:@"OffsetKey"];
  
  UIOffset offset = [defaults offsetForKey: @"OffsetKey"];
  NSLog(@"offset %@", NSStringFromUIOffset(offset));

}

@end
