//
//  NSUserDefaults+Geometry.m
//  NSUserDefaults+Geometry
//
//  Created by Carl Jahn on 09.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import "NSUserDefaults+CJAGeometry.h"

@implementation NSUserDefaults (CJAGeometry)

- (void)setPoint:(CGPoint)value forKey:(NSString *)defaultName {
  
  NSString *valueString = NSStringFromCGPoint(value);
  [self setValue: valueString forKey:defaultName];
}

- (CGPoint)pointForKey:(NSString *)defaultName {
  
  NSString *valueString = [self valueForKey: defaultName];
  
  return CGPointFromString(valueString);
}

- (void)setSize:(CGSize)value forKey:(NSString *)defaultName {

  NSString *valueString = NSStringFromCGSize(value);
  [self setValue: valueString forKey:defaultName];
}

- (CGSize)sizeForKey:(NSString *)defaultName {

  NSString *valueString = [self valueForKey: defaultName];
  
  return CGSizeFromString(valueString);
}

- (void)setRect:(CGRect)value forKey:(NSString *)defaultName {
 
  NSString *valueString = NSStringFromCGRect(value);
  [self setValue: valueString forKey:defaultName];
}

- (CGRect)rectForKey:(NSString *)defaultName {

  NSString *valueString = [self valueForKey: defaultName];
  
  return CGRectFromString(valueString);
}

- (void)setAffineTransform:(CGAffineTransform)value forKey:(NSString *)defaultName {

  NSString *valueString = NSStringFromCGAffineTransform(value);
  [self setValue: valueString forKey:defaultName];
}

- (CGAffineTransform)affineTransformForKey:(NSString *)defaultName {

  NSString *valueString = [self valueForKey: defaultName];
  
  return CGAffineTransformFromString(valueString);
}

- (void)setEdgeInsets:(UIEdgeInsets)value forKey:(NSString *)defaultName {

  NSString *valueString = NSStringFromUIEdgeInsets(value);
  [self setValue: valueString forKey:defaultName];
}

- (UIEdgeInsets)edgeInsetsForKey:(NSString *)defaultName {
  
  NSString *valueString = [self valueForKey: defaultName];
  
  return UIEdgeInsetsFromString(valueString);
}

- (void)setOffset:(UIOffset)value forKey:(NSString *)defaultName NS_AVAILABLE_IOS(5_0) {

  NSString *valueString = NSStringFromUIOffset(value);
  [self setValue: valueString forKey:defaultName];
}

- (UIOffset)offsetForKey:(NSString *)defaultName NS_AVAILABLE_IOS(5_0) {
  
  NSString *valueString = [self valueForKey: defaultName];
  
  return UIOffsetFromString(valueString);
}


@end
