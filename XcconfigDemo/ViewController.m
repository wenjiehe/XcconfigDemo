//
//  ViewController.m
//  XcconfigDemo
//
//  Created by 贺文杰 on 2020/1/12.
//  Copyright © 2020 贺文杰. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"hFont = %@ ,CUSTOMURL = %@, kk = %@", hFont, CUSTOMURL, kk);
    
    NSLog(@"CFBundleVersion = %@, CFBundleShortVersionString = %@", [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"], [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]);
}


@end
