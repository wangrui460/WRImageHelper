//
//  ViewController.m
//  Demo
//
//  Created by wangrui on 2017/7/26.
//  Copyright © 2017年 wangrui. All rights reserved.
//

#import "ViewController.h"
#import "WRImageHelper.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *searchImage;
@property (weak, nonatomic) IBOutlet UIButton *redButton;
@property (weak, nonatomic) IBOutlet UIButton *greenButton;
@property (weak, nonatomic) IBOutlet UIButton *blueButton;
@property (weak, nonatomic) IBOutlet UISlider *alphaSlider;

@end

@implementation ViewController
{
    UIColor *mCurrentColor;
    CGFloat mCurrentAlpha;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    mCurrentColor = [UIColor blueColor];
    mCurrentAlpha = 0.5;
    [self updateSearchImageWith:mCurrentColor alpha:mCurrentAlpha];
}

- (IBAction)onClickRedBtn:(id)sender
{
    mCurrentColor = [UIColor redColor];
    [self updateSearchImageWith:mCurrentColor alpha:mCurrentAlpha];
}

- (IBAction)onClickGreenBtn:(id)sender
{
    mCurrentColor = [UIColor greenColor];
    [self updateSearchImageWith:mCurrentColor alpha:mCurrentAlpha];
}

- (IBAction)onClickBlueBtn:(id)sender
{
    mCurrentColor = [UIColor blueColor];
    [self updateSearchImageWith:mCurrentColor alpha:mCurrentAlpha];
}

- (IBAction)updateSlider:(UISlider *)sender
{
    mCurrentAlpha = sender.value;
    [self updateSearchImageWith:mCurrentColor alpha:mCurrentAlpha];
}

- (void)updateSearchImageWith:(UIColor *)color alpha:(CGFloat)alpha
{
    UIImage *searchImage = [UIImage imageNamed:@"search"];
    self.searchImage.image = [searchImage wr_updateImageWithTintColor:color alpha:alpha];
}


@end





