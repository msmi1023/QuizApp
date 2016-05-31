//
//  ViewController.m
//  QuizApp
//
//  Created by tstone10 on 5/31/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ViewController.h"
#import "Question.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UIButton *nextQuestionButton;

@end

@implementation ViewController

Question * questObj;
int counter = 0;

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	questObj = [[Question alloc] init];
	//[questObj setupArrays];
	
	[self viewUpdatesForNextQuestion];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}
- (IBAction)showAnswer:(id)sender {
	[self viewUpdatesForCurrentAnswer];
}

- (IBAction)showNextQuestion:(id)sender {
	counter++;
	[self viewUpdatesForNextQuestion];
	
	if(counter == questObj.questions.count-1) {
		_nextQuestionButton.enabled = NO;
	}
}

- (void)viewUpdatesForNextQuestion {
	_questionLabel.text = [NSString stringWithFormat:@"Q: %@", questObj.questions[counter]];
	_answerLabel.text = @"A:";
}

- (void)viewUpdatesForCurrentAnswer {
	_answerLabel.text = [NSString stringWithFormat:@"A: %@", questObj.answers[counter]];
}

@end
