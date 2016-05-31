//
//  Question.m
//  QuizApp
//
//  Created by tstone10 on 5/31/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "Question.h"

@implementation Question

//-(void) setupArrays {
//	_questions = @[@"Where are we?", @"What are we doing?"];
//	_answers = @[@"Techtown Detroit", @"Learing iOS"];
//}

-(Question *)init {
	self = [super init];
	
	_questions = @[@"Where are we?", @"What are we doing?"];
	_answers = @[@"Techtown Detroit", @"Learing iOS"];
	
	return self;
}

@end
