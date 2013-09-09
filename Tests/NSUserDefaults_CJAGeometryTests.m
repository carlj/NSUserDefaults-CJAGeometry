//
//  NSUserDefaults_GeometryTests.m
//  NSUserDefaults+GeometryTests
//
//  Created by Carl Jahn on 09.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import "NSUserDefaults_CJAGeometryTests.h"

#import "NSUserDefaults+CJAGeometry.h"
#import <QuartzCore/QuartzCore.h>

@interface NSUserDefaults_CJAGeometryTests ()

@property (nonatomic, strong) NSUserDefaults *defaults;

@end

@implementation NSUserDefaults_CJAGeometryTests

- (void)setUp
{
  [super setUp];
  
  self.defaults = [NSUserDefaults standardUserDefaults];
  // Set-up code here.
}

- (void)tearDown
{
  // Tear-down code here.
  [NSUserDefaults resetStandardUserDefaults];

  self.defaults = nil;
  [super tearDown];
}

- (void)testPoint {
  
  CGPoint testPoint = CGPointMake(1, 20);
  [self.defaults setPoint: testPoint forKey:@"PointKey"];
  
  CGPoint point = [self.defaults pointForKey: @"PointKey"];
  STAssertTrue(CGPointEqualToPoint(point, testPoint), @"Points arent equal");
}

- (void)testSize {
  
  CGSize testSize = (CGSize){20, 37};
  [self.defaults setSize: testSize forKey:@"SizeKey"];
  
  CGSize size = [self.defaults sizeForKey: @"SizeKey"];
  STAssertTrue(CGSizeEqualToSize(size, testSize), @"Sizes arent equal");
}

- (void)testRect {
  
  CGRect testRect = (CGRect){1, 20, 23, 33};
  [self.defaults setRect: testRect forKey:@"RectKey"];
  
  CGRect rect = [self.defaults rectForKey: @"RectKey"];
  STAssertTrue(CGRectEqualToRect(rect, testRect), @"Rects arent equal");
}

- (void)testAffineTransfrom {
  
  CGAffineTransform testAffineTransform = CGAffineTransformIdentity;
  [self.defaults setAffineTransform: CGAffineTransformIdentity forKey:@"AffineTransfomrKey"];
  
  CGAffineTransform affineTransform = [self.defaults affineTransformForKey: @"AffineTransfomrKey"];
  STAssertTrue(CGAffineTransformEqualToTransform(affineTransform, testAffineTransform), @"Transforms arent equal");
}

- (void)testEdgeInsets {
  
  UIEdgeInsets testEdgeInset = UIEdgeInsetsMake(0, 10, 4, 38);
  [self.defaults setEdgeInsets: testEdgeInset forKey:@"EdgeInsetsKey"];
  
  UIEdgeInsets edgeInsets = [self.defaults edgeInsetsForKey: @"EdgeInsetsKey"];
  STAssertTrue(UIEdgeInsetsEqualToEdgeInsets(edgeInsets, testEdgeInset), @"Insets arent equal");
}

- (void)testOffset {
  
  UIOffset testOffset = UIOffsetFromString(@"27.0,33.5");
  [self.defaults setOffset: testOffset forKey:@"OffsetKey"];
  
  UIOffset offset = [self.defaults offsetForKey: @"OffsetKey"];
  STAssertTrue(UIOffsetEqualToOffset(offset, testOffset), @"Offsets arent equal");
}


@end
