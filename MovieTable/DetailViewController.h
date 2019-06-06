//
//  DetailViewController.h
//  MovieTable
//
//  Created by student on 22/9/2017.
//  Copyright © 2017 student. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <MediaPlayer/MediaPlayer.h>

#import <AudioToolbox/AudioToolbox.h>

#import <AVFoundation/AVFoundation.h>


@interface DetailViewController : UIViewController {
    
    SystemSoundID soundID;
    
}


@property (strong, nonatomic) IBOutlet UILabel *TitleLabel;

@property (strong, nonatomic) IBOutlet UILabel *DescriptionLabel;

@property (strong, nonatomic) IBOutlet UIImageView *ImageView;

@property (strong, nonatomic) NSArray *DetailModal;

@property (nonatomic, strong) MPMoviePlayerController *moviePlayerController;

- (IBAction)playMovie:(id)sender;

- (IBAction)shareItem:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *meow;

- (IBAction)meowButton:(id)sender;


@end
