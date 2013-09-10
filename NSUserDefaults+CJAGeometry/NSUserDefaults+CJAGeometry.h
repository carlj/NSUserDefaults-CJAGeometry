//
//  NSUserDefaults+Geometry.h
//  NSUserDefaults+Geometry
//
//  Created by Carl Jahn on 09.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (CJAGeometry)

/**
 Sets the CGPoint value of the specified key in the standard application domain.
 
 @param value The CGPoint to store in the defaults database.
 @param defaultName The key with which to associate with the value. 
 */
- (void)setPoint:(CGPoint)value forKey:(NSString *)defaultName;

/**
 Returns the CGPoint value associated with the first occurrence of the specified key.
 
 @param defaultName The key which is associate with the value.
 @return The CGPoint value associated with the specified key, or nil if the key was not found.
 */
- (CGPoint)pointForKey:(NSString *)defaultName;


/**
 Sets the CGSize value of the specified key in the standard application domain.
 
 @param value The CGSize to store in the defaults database.
 @param defaultName The key with which to associate with the value.
 */
- (void)setSize:(CGSize)value forKey:(NSString *)defaultName;

/**
 Returns the CGSize value associated with the first occurrence of the specified key.
 
 @param defaultName The key which is associate with the value.
 @return The CGSize value associated with the specified key, or nil if the key was not found.
 */
- (CGSize)sizeForKey:(NSString *)defaultName;


/**
 Sets the CGRect value of the specified key in the standard application domain.
 
 @param value The CGRect to store in the defaults database.
 @param defaultName The key with which to associate with the value.
 */
- (void)setRect:(CGRect)value forKey:(NSString *)defaultName;

/**
 Returns the CGRect value associated with the first occurrence of the specified key.
 
 @param defaultName The key which is associate with the value.
 @return The CGRect value associated with the specified key, or nil if the key was not found.
 */
- (CGRect)rectForKey:(NSString *)defaultName;


/**
 Sets the CGAffineTransform value of the specified key in the standard application domain.
 
 @param value The CGAffineTransform to store in the defaults database.
 @param defaultName The key with which to associate with the value.
 */
- (void)setAffineTransform:(CGAffineTransform)value forKey:(NSString *)defaultName;

/**
 Returns the CGAffineTransform value associated with the first occurrence of the specified key.
 
 @param defaultName The key which is associate with the value.
 @return The CGAffineTransform value associated with the specified key, or nil if the key was not found.
 */
- (CGAffineTransform)affineTransformForKey:(NSString *)defaultName;


/**
 Sets the UIEdgeInsets value of the specified key in the standard application domain.
 
 @param value The UIEdgeInsets to store in the defaults database.
 @param defaultName The key with which to associate with the value.
 */
- (void)setEdgeInsets:(UIEdgeInsets)value forKey:(NSString *)defaultName;

/**
 Returns the UIEdgeInsets value associated with the first occurrence of the specified key.
 
 @param defaultName The key which is associate with the value.
 @return The UIEdgeInsets value associated with the specified key, or nil if the key was not found.
 */
- (UIEdgeInsets)edgeInsetsForKey:(NSString *)defaultName;


/**
 Sets the UIOffset value of the specified key in the standard application domain.
 
 @param value The UIOffset to store in the defaults database.
 @param defaultName The key with which to associate with the value.
 */
- (void)setOffset:(UIOffset)value forKey:(NSString *)defaultName NS_AVAILABLE_IOS(5_0);

/**
 Returns the UIOffset value associated with the first occurrence of the specified key.
 
 @param defaultName The key which is associate with the value.
 @return The UIOffset value associated with the specified key, or nil if the key was not found.
 */
- (UIOffset)offsetForKey:(NSString *)defaultName NS_AVAILABLE_IOS(5_0);

@end
