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

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"1 viewWillAppear");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"%@",Chapter1.classP);
    [Chapter1 setClassP:@"conan"];
    NSLog(@"%@",Chapter1.classP);

}


@end
