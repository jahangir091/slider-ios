//
//  ViewController.m
//  Slider
//
//  Created by FaroqueAhmed on 7/5/17.
//  Copyright © 2017 afrigis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addSlider];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addSlider
{
    myslider = [[UISlider alloc]initWithFrame:CGRectMake(50, 200, 200, 23)];
    [self.view addSubview:myslider];
    myslider.minimumValue = 10.0;
    myslider.maximumValue = 99.0;
    mylabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 150, 200, 20) ];
    mylabel.backgroundColor = [UIColor grayColor];
    mylabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:mylabel];
    [myslider addTarget:self action:@selector(sliderChange) forControlEvents:UIControlEventValueChanged];
}


-(void)sliderChange
{

    NSString *value = [NSString stringWithFormat:@"%f", myslider.value];
    [mylabel setText:value];
}

@end
