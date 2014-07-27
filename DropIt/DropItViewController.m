//
//  DropItViewController.m
//  DropIt
//
//  Created by Stuart Claghorn on 7/1/14.
//  Copyright (c) 2014 CS193p. All rights reserved.
//

#import "DropItViewController.h"

@interface DropItViewController ()
@property (weak, nonatomic) IBOutlet UIView *gameView;

@end

@implementation DropItViewController

static const CGSize DROP_SIZE = {40, 40};

- (IBAction)tap:(UITapGestureRecognizer *)sender
{
    [self drop];
}

- (void) drop
{
    CGRect frame;
    frame.origin = CGPointZero;
    frame.size = DROP_SIZE;
    int x = (arc4random()%(int)self.gameView.bounds.size.width) / DROP_SIZE.width;
    frame.origin.x = x * DROP_SIZE.width;
    
    UIView *dropView = [[UIView alloc] initWithFrame: frame];
    dropView.backgroundColor = [self randomColor];
    [self.gameView addSubview:dropView];
}

- (UIColor *)randomColor
{
    switch (arc4random()%5){
        case 0: return [UIColor greenColor];
        case 1: return [UIColor blueColor];
        case 2: return [UIColor orangeColor];
        case 3: return [UIColor redColor];
        case 4: return [UIColor purpleColor];
    }
    return [UIColor blackColor];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
