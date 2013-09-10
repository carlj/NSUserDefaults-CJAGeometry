#NSUserDefaults-CJAGeometry
Is a simple Category for handling `CGPoint`, `CGSize`, `CGRect`, `CGAffineTransform`, `UIEdgeInsets` and `UIOffset` with your [`NSUserDefaults`](https://developer.apple.com/library/ios/documentation/cocoa/reference/foundation/Classes/NSUserDefaults_Class/Reference/Reference.html)

[![Build Status](https://travis-ci.org/carlj/NSUserDefaults-CJAGeometry.png?branch=master)](https://travis-ci.org/carlj/NSUserDefaults-CJAGeometry)

##Installation
Just drag & drop the [`NSUserDefaults+CJAGeometry.h`](/NSUserDefaults+CJAGeometry/NSUserDefaults+CJAGeometry.m) and [`NSUserDefaults+CJAGeometry.m`](/NSUserDefaults+CJAGeometry/NSUserDefaults+CJAGeometry.m) to your project.

##Usage
First of all take a look at the [Example](Example/Classes/ExampleViewController.m)

``` objc
NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];

//set a CGPoint to the userdefaults
[defaults setPoint: CGPointMake(1, 20) forKey:@"PointKey"];

//get a CGPoint from the userdefaults
CGPoint point = [defaults pointForKey: @"PointKey"];
NSLog(@"point %@", NSStringFromCGPoint(point));


//set a CGSize to the userdefaults
[defaults setSize: (CGSize){20, 37} forKey:@"SizeKey"];

//get a CGSize from the userdefaults
CGSize size = [defaults sizeForKey: @"SizeKey"];
NSLog(@"size %@", NSStringFromCGSize(size));


//set a CGRect to the userdefaults
[defaults setRect: (CGRect){1, 20, 23, 33} forKey:@"RectKey"];

//get a CGRect from the userdefaults
CGRect rect = [defaults rectForKey: @"RectKey"];
NSLog(@"rect %@", NSStringFromCGRect(rect));


//set a CGAffineTransform to the userdefaults
[defaults setAffineTransform: CGAffineTransformIdentity forKey:@"AffineTransfomrKey"];

//get a CGAffineTransform from the userdefaults
CGAffineTransform affineTransform = [defaults affineTransformForKey: @"AffineTransfomrKey"];
NSLog(@"AffineTransform %@", NSStringFromCGAffineTransform(affineTransform));


//set a UIEdgeInsets to the userdefaults
[defaults setEdgeInsets: UIEdgeInsetsMake(0, 10, 4, 38) forKey:@"EdgeInsetsKey"];

//get a UIEdgeInsets from the userdefaults
UIEdgeInsets edgeInsets = [defaults edgeInsetsForKey: @"EdgeInsetsKey"];
NSLog(@"edgeInset %@", NSStringFromUIEdgeInsets(edgeInsets));


//set a UIOffset to the userdefaults
[defaults setOffset: UIOffsetFromString(@"27.0,33.5") forKey:@"OffsetKey"];

//get a UIOffset from the userdefaults
UIOffset offset = [defaults offsetForKey: @"OffsetKey"];
NSLog(@"offset %@", NSStringFromUIOffset(offset));
```

##LICENSE
Released under the [MIT LICENSE](LICENSE)
