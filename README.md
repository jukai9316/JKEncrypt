# JKTest

使用前必读：

JKEncrypt 是用于3DES 256加密解密的库。
支持字符串形式和16进制

字符串加密：doEncryptStr
字符串解密：doDecEncryptStr

十六进制：doEncryptHex
十六进制解密：doEncryptHex

1、设置密匙、偏移量
//密匙 key
#define gkey            @"Kyle_Chu"
//偏移量
#define gIv             @"jukai"

2、使用方法

@"kyle_jukai" 是测试字符串，换成您需要加密的内容即可


JKEncrypt * en = [[JKEncrypt alloc]init];
//加密
NSString * encryptStr = [en doEncryptStr: @"kyle_jukai"];

NSString * encryptHex = [en doEncryptHex: @"kyle_jukai"];

NSLog(@"字符串加密:%@",encryptStr);
NSLog(@"十六进制加密:%@",encryptHex);
//解密
NSString *decEncryptStr = [en doDecEncryptStr:encryptStr];

NSString *decEncryptHex = [en doEncryptHex:encryptHex];

NSLog(@"字符串解密:%@",decEncryptStr);
NSLog(@"字符串解密:%@",decEncryptHex);

