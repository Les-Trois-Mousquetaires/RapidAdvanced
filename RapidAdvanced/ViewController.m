//
//  ViewController.m
//  RapidAdvanced
//
//  Created by 柯南 on 2020/6/19.
//  Copyright © 2020 LTM. All rights reserved.
//

#import "ViewController.h"
#import "Chapter1.h"


@interface ViewController ()
@property (nonatomic, strong) CALayer *testLayer;
@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) UIView *myview;

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"1 viewWillAppear");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self Chapter3];
    
  

}

- (void)Chapter3{
    self.testLayer = [[CALayer alloc]init];
    self.testLayer.frame = CGRectMake(50, 100, 100, 100);
    self.testLayer.backgroundColor = [UIColor redColor].CGColor;
    [self.view.layer addSublayer:self.testLayer];
    
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    self.button.frame = CGRectMake(150, 400, 100, 50);
    [self.button setTitle:@"按钮来了" forState:(UIControlStateNormal)];
    [self.button setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [self.button addTarget:self action:@selector(click) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:self.button];
}

- (void)click{
    
    
    self.testLayer.backgroundColor = [UIColor blackColor].CGColor;
}

- (void)Chapter2{
    
}

- (void)Chapter1{
    NSLog(@"%@",Chapter1.classP);
      [Chapter1 setClassP:@"conan"];
      NSLog(@"%@",Chapter1.classP);

      NSLog(@"hello1 %p",@"hello");
      NSLog(@"hello2 %p",@"hello");
}

@end
