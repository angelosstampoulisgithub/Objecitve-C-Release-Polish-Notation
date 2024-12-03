//
//  ViewController.h
//  Objective-C-ReleasePolishNotation
//
//  Created by Angelos Staboulis on 3/12/24.
//

#import <Cocoa/Cocoa.h>
#import "Parser.h"
@interface ViewController : NSViewController

@property (weak) IBOutlet NSTextField *txtResult;
- (IBAction)btnCalculateFormula:(id)sender;
@property (weak) IBOutlet NSTextField *txtFormula;
@property Parser *parser;
@property NSString *result;
@end

