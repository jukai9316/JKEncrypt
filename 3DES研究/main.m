//
//  main.m
//  3DES研究
//
//  Created by apple on 15/10/22.
//  Copyright © 2015年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JKEncrypt.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        JKEncrypt * en = [[JKEncrypt alloc]init];
        //加密
        NSString * encryptStr = [en doEncryptStr: @"kyle_jukai"];
        NSString * encryptHex = [en doEncryptHex:   @"kyle_jukai"];
        NSLog(@"字符串加密:%@",encryptStr);
        NSLog(@"十六进制加密:%@",encryptHex);
        //解密
        NSString *decEncryptStr = [en doDecEncryptStr:encryptStr];
        NSString *decEncryptHex = [en doDecEncryptHex:encryptHex];
        NSLog(@"字符串解密:%@",decEncryptStr);
        NSLog(@"字符串解密:%@",decEncryptHex);
        
    }
    return 0;
}
