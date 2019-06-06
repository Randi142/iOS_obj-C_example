//
//  ViewController.m
//  MovieTable
//
//  Created by Randi on 2/6/2019.
//  Copyright © 2019 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    BOOL pause ;
}



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    pause = true;
    
    NSString *music = [[NSBundle mainBundle]pathForResource:@"bgm" ofType:@"mp3"];  //play bgm
    
    audioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL fileURLWithPath:music] error:NULL];
    
    audioPlayer.delegate = self ;
    
    audioPlayer.numberOfLoops = -1;
    
    [audioPlayer play]; //for bgm
    
    UIImage *image = [UIImage imageNamed: @"Background.png"];      //for background image
    UIImageView *backImage = [[UIImageView alloc] initWithImage: image];
    
    backImage.contentMode = UIViewContentModeTopLeft;
    [self.view insertSubview:backImage atIndex:0];
    
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

- (IBAction)mute:(id)sender {

    //bgm toggle switch (pause)
    if (pause == true){
        pause = false;
        [audioPlayer stop];
        [_muteImage setImage:[UIImage imageNamed:@"unmute.png"] forState:UIControlStateNormal]; //switch button image
    }
    else {
        pause = true;
        [audioPlayer play];
        [_muteImage setImage:[UIImage imageNamed:@"mute.png"] forState:UIControlStateNormal];
    }
}
- (IBAction)linkGit:(id)sender {
    
    
//    ***not working for simulator***
//    NSString *simple = @"itms-apps://itunes.apple.com/app/id375380948";
//    NSURL *url = [NSURL URLWithString:simple];
//    UIApplication *link = [UIApplication sharedApplication];
//    [link openURL:url options:@{} completionHandler:nil];
//    link to APP store, not working due to the simulator 'x86' 'ARM' issues
    
    
}

- (IBAction)email_it:(id)sender {
    // for email
    NSURL *url = [NSURL URLWithString:@"https://www.nowmymail.com/"];
    [[UIApplication sharedApplication]openURL:url options:@{} completionHandler:nil];
}



@end
