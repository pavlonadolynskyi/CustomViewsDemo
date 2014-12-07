//
//  ViewController.m
//  CustomViewsDemo
//
//  Created by paul on 12/7/14.
//  Copyright (c) 2014 paul. All rights reserved.
//

#import "CustomSlider.h"
#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation ViewController

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

- (IBAction)sliderValueChanged:(CustomSlider *)sender
{
    _label.text = [NSString stringWithFormat:@"%f", sender.sliderValue];
}

@end
