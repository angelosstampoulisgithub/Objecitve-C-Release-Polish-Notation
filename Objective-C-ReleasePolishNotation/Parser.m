//
//  Parser.m
//  Objective-C-ReleasePolishNotation
//
//  Created by Angelos Staboulis on 3/12/24.
//

#import "Parser.h"

@implementation Parser
- (NSInteger)evaluateRPN:(NSArray<NSString *> *)tokens {
    NSInteger a = 0;
    NSInteger b = 0;
    NSMutableArray<NSNumber *> *stack = [NSMutableArray array];
    for (NSString *token in tokens) {
        if ([token isEqualToString:@"+"]) {
            b = [[stack lastObject] integerValue];
            [stack removeLastObject];
            a = [[stack lastObject] integerValue];
            [stack removeLastObject];
            [stack addObject:@(a + b)];
        } else if ([token isEqualToString:@"-"]) {
            b = [[stack lastObject] integerValue];
            [stack removeLastObject];
            a = [[stack lastObject] integerValue];
            [stack removeLastObject];
            [stack addObject:@(a - b)];
        } else if ([token isEqualToString:@"*"]) {
            b = [[stack lastObject] integerValue];
            [stack removeLastObject];
            a = [[stack lastObject] integerValue];
            [stack removeLastObject];
            [stack addObject:@(a * b)];
        } else if ([token isEqualToString:@"/"]) {
            b = [[stack lastObject] integerValue];
            [stack removeLastObject];
            a = [[stack lastObject] integerValue];
            [stack removeLastObject];
            [stack addObject:@(a / b)];
        } else {
            [stack addObject:@(token.integerValue)];
        }
    }
    
    return [[stack lastObject] integerValue];
}

@end
