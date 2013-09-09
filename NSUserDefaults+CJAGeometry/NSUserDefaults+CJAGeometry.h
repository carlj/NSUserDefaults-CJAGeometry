//
//  NSUserDefaults+Geometry.h
//  NSUserDefaults+Geometry
//
//  Created by Carl Jahn on 09.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (CJAGeometry)

- (void)setPoint:(CGPoint)value forKey:(NSString *)defaultName;
- (CGPoint)pointForKey:(NSString *)defaultName;

- (void)setSize:(CGSize)value forKey:(NSString *)defaultName;
- (CGSize)sizeForKey:(NSString *)defaultName;

- (void)setRect:(CGRect)value forKey:(NSString *)defaultName;
- (CGRect)rectForKey:(NSString *)defaultName;

- (void)setAffineTransform:(CGAffineTransform)value forKey:(NSString *)defaultName;
- (CGAffineTransform)affineTransformForKey:(NSString *)defaultName;

- (void)setEdgeInsets:(UIEdgeInsets)value forKey:(NSString *)defaultName;
- (UIEdgeInsets)edgeInsetsForKey:(NSString *)defaultName;

- (void)setOffset:(UIOffset)value forKey:(NSString *)defaultName NS_AVAILABLE_IOS(5_0);
- (UIOffset)offsetForKey:(NSString *)defaultName NS_AVAILABLE_IOS(5_0);



@end
