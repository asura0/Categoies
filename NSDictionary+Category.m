//
//  NSDictionary+Category.m
//  aaaa
//
//  Created by 赚发2 on 16/7/15.
//  Copyright © 2016年 fengwang. All rights reserved.
//

#import "NSDictionary+Category.h"

@implementation NSDictionary (Category)

+(instancetype)dictionaryWithObjects:(const id  _Nonnull __unsafe_unretained *)objects forKeys:(const id<NSCopying>  _Nonnull __unsafe_unretained *)keys count:(NSUInteger)cnt
{
    NSUInteger keyCnt = 0, valueCnt = 0;
    __unsafe_unretained id *objPtr = objects; // 指向objects初始位置
    __unsafe_unretained id *keyPtr = keys;    // 指向keys初始位置
    // 遍历找到为key nil的位置
    for (   ; keyCnt < cnt; keyCnt ++, objPtr++) {
        if (*objPtr == 0)
        {
            *objPtr = @"";
        }
    }
    // 遍历找到为key nil的位置
    for (   ; valueCnt < cnt; valueCnt ++, keyPtr++) {
        if (*keyPtr == 0) // 遍历找到为key nil的位置
        {
            *objPtr = @"";
        }
    }
    // 找到最小值
    NSUInteger minCnt = MIN(keyCnt, valueCnt);
    // 构造合适的key,object array
    NSArray *vs = [NSArray arrayWithObjects:objects count:minCnt];
    NSArray *ks = [NSArray arrayWithObjects:keys count:minCnt];
    // 用下面的方法构造
    return [self dictionaryWithObjects:vs forKeys:ks];
}

@end
