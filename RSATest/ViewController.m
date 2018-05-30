//
//  ViewController.m
//  RSATest
//
//  Created by wjw on 2018/5/29.
//  Copyright © 2018年 wjw. All rights reserved.
//

#import "ViewController.h"
#import "RSA_Encryptor.h"

#import "NSData+Base64.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        // 获取证书，加密
    RSA_Encryptor *rsa = [[RSA_Encryptor alloc]init];
    
        // 加密
    NSString *publicKeyPath = [[NSBundle mainBundle] pathForResource:@"public_key" ofType:@"der"];
    NSLog(@"证书路径 key: %@", publicKeyPath);
    [rsa loadPublicKeyFromFile:publicKeyPath];
    NSString *securityText = @"调试 ~";
    NSString *encryptedString = [rsa rsaEncryptString:securityText];
    NSLog(@"加密: %@", encryptedString);
        // 解密请输入自己的 p12证书密码
    [rsa loadPrivateKeyFromFile:[[NSBundle mainBundle] pathForResource:@"private_key" ofType:@"p12"] password:@"0"];
    NSString *decryptedString = [rsa rsaDecryptString:encryptedString];
    NSLog(@"解密: %@", decryptedString);
   
   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)ss {
//    RSA_Encryptor * rsaEncryptor = [[RSA_Encryptor alloc] init];
//    NSString* publicKeyPath = [[NSBundle mainBundle] pathForResource:@"public_key" ofType:@"der"];
//    NSString* privateKeyPath = [[NSBundle mainBundle] pathForResource:@"private_key" ofType:@"p12"];
//        //    [rsaEncryptor loadPublicKeyWithPath:publicKeyPath];
//    [rsaEncryptor loadPublicKeyFromFile: publicKeyPath];
//        //    [rsaEncryptor loadPrivateKeyWithPath:privateKeyPath password:@""];
//    [rsaEncryptor loadPrivateKeyFromFile: privateKeyPath password:@"0"];    // 密码
//    
//    NSString* restrinBASE64STRING = [rsaEncryptor rsaDecryptText:@"你好"];
//    NSLog(@"加密后的: %@", restrinBASE64STRING);     //加密
//    NSString* decryptString = [rsaEncryptor rsaDecryptText:restrinBASE64STRING];//解密
//    NSLog(@"解密后的: %@", decryptString);
}
@end
