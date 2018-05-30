//
//  RSAEncryptor.h
//  RAS签名
//
//  Created by wjw on 2018/5/29.
//  Copyright © 2018年 wjw. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RSA_Encryptor : NSObject
#pragma mark 初始化对象
- (id)init;
#pragma mark - 加解密函数
/**
 *  读取公钥证书
 *
 *  @param derFilePath 公钥名
 */
-(void) loadPublicKeyFromFile: (NSString*) derFilePath;
/**
 *  读取私钥证书
 *
 *  @param p12FilePath 私钥证书名
 *  @param p12Password 生成证书时的密码
 */
-(void) loadPrivateKeyFromFile: (NSString*) p12FilePath password:(NSString*)p12Password;
/**
 *  加密
 *
 *  @param string 输入的加密字符串
 *
 *  @return 加密后的字符串
 */
-(NSString*) rsaEncryptString:(NSString*)string;
/**
 *  解密
 *
 *  @param string 加密字符串（需要解密字符串）
 *
 *  @return 解密后字符串
 */
-(NSString*) rsaDecryptString:(NSString*)string;


@end
