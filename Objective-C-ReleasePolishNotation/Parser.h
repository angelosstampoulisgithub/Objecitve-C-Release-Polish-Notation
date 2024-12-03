//
//  Parser.h
//  Objective-C-ReleasePolishNotation
//
//  Created by Angelos Staboulis on 3/12/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Parser : NSObject
- (NSInteger)evaluateRPN:(NSArray<NSString *> *)tokens;

@end

NS_ASSUME_NONNULL_END
