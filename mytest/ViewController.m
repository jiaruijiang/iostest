//
//  ViewController.m
//  mytest
//
//  Created by 江嘉睿 on 16/3/7.
//  Copyright © 2016年 江嘉睿. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)enterTestView:(id)sender {
    UIAlertController* alertController = [UIAlertController
                                          alertControllerWithTitle:
                                          @"I'm alert"
                                          message:@"Alert text"
                                          preferredStyle: UIAlertControllerStyleAlert];
    UIAlertAction* noAction = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action){
        NSLog(@"Tap no cancle");
    }];
    UIAlertAction* yesAction = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        NSLog(@"Tap yes ");
    }];
    [alertController addAction:noAction];
    [alertController addAction:yesAction];
    
    [self presentViewController:alertController animated:true completion:nil];
}

@end
