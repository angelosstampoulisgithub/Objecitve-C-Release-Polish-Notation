//
//  ViewController.m
//  Objective-C-ReleasePolishNotation
//
//  Created by Angelos Staboulis on 3/12/24.
//

#import "ViewController.h"
#import "Parser.h"
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _parser = [[Parser alloc] init];
     // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)btnCalculateFormula:(id)sender {
    NSArray *arrayFormula = [_txtFormula.stringValue componentsSeparatedByString:@","];
    NSInteger resultRPN = [_parser evaluateRPN:arrayFormula];
    _result = [NSString stringWithFormat:@"%ld",(long)resultRPN];
    [_txtResult setStringValue:_result];
    
}
@end
