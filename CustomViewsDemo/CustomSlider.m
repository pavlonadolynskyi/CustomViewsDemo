//
//  CustomSlider.m
//  CustomViewsDemo
//
//  Created by paul on 12/7/14.
//  Copyright (c) 2014 paul. All rights reserved.
//

#import "CustomSlider.h"

@interface CustomSlider ()
{
    __weak IBOutlet UIView *_progressView;
}

@end

@implementation CustomSlider

- (void)setupFromNib
{
    UIView *contentView = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil] firstObject];
    [self addSubview:contentView];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupFromNib];
    }
    return self;
}

- (void)awakeFromNib
{
    [self setupFromNib];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self];
    [self setSliderValue:location.x / self.frame.size.width];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self];
    [self setSliderValue:location.x / self.frame.size.width];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self sendActionsForControlEvents:UIControlEventValueChanged];
}

- (void)setSliderValue:(CGFloat)sliderValue
{
    _sliderValue = MIN(1, MAX(0, sliderValue));
    [_progressView setFrame:CGRectMake(0, 0, _sliderValue * self.frame.size.width, self.frame.size.height)];
}

@end
