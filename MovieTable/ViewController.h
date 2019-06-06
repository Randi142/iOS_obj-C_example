//
//  ViewController.h
//  MovieTable
//
//  Created by Randi on 2/6/2019.
//  Copyright © 2019 student. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <AVFoundation/AVFoundation.h>

#import <MessageUI/MessageUI.h>

@interface ViewController : UIViewController{
    AVAudioPlayer * audioPlayer;
}

- (IBAction)mute:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *muteImage;
- (IBAction)linkGit:(id)sender;


@end
