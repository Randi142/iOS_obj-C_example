//
//  webUIView.m
//  MovieTable
//
//  Created by Randi on 3/6/2019.
//  Copyright © 2019 student. All rights reserved.
//

#import "webUIView.h"

@interface webUIView ()

@end

@implementation webUIView

- (void)viewDidLoad {
    [super viewDidLoad];
    // web view
    NSString *url = @"https://github.com/Randi142";
    NSURL *pageurl = [NSURL URLWithString:url];
    NSURLRequest *requestObjurl = [NSURLRequest requestWithURL:pageurl];
    [_webView loadRequest:requestObjurl];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
