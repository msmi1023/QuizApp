//
//  Question.h
//  QuizApp
//
//  Created by tstone10 on 5/31/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

//an NSArray of NSString objects named questions, and an NSArray of NSString objects named answers

@property NSArray * questions;
@property NSArray * answers;

//-(void) setupArrays;
-(Question *)init;

@end
