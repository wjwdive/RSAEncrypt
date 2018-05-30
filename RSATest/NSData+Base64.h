//
//  NSData+Base64.h
//  RAS签名
//
//  Created by wjw on 2018/5/29.
//  Copyright © 2018年 wjw. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Base64)  
+ (NSData *)dataWithBase64EncodedString:(NSString *)string;
- (NSString *)base64EncodedStringWithWrapWidth:(NSUInteger)wrapWidth;
- (NSString *)base64EncodedString;
@end
