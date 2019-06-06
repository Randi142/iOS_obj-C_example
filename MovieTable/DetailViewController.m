//
//  DetailViewController.m
//  MovieTable
//
//  Created by student on 22/9/2017.
//  Copyright © 2017 student. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    _TitleLabel.text = _DetailModal[0];
    _TitleLabel.textColor = [UIColor whiteColor];
    _DescriptionLabel.text = _DetailModal[1];
    _DescriptionLabel.textColor = [UIColor yellowColor];
    _ImageView.image = [UIImage imageNamed:_DetailModal[2]];
    
    NSLog(@"The Array of DetailModal: %@, %@, %@", _DetailModal[0], _DetailModal[1], _DetailModal[2]);
    
    self.navigationItem.title = _DetailModal[0];
    
    UIImage *image = [UIImage imageNamed: @"Background.png"];
    UIImageView *backImage = [[UIImageView alloc] initWithImage: image];
    
    //backImage.contentMode = UIViewContentModeScaleAspectFit;
    //backImage.contentMode = UIViewContentModeScaleToFill;
    
    [self.view addSubview: backImage];
    [self.view sendSubviewToBack: backImage];
    
    backImage.contentMode = UIViewContentModeScaleAspectFill;
    
    self.meow.hidden = YES;
    
    NSURL *soundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
    
    AudioServicesCreateSystemSoundID((__bridge CFURLRef) soundURL, &soundID);

    
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

- (IBAction)playMovie:(id)sender {
    
    NSString *movieName = _DetailModal[3];
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:movieName ofType:@"mp4"];
    
    NSURL *videoURL = [NSURL fileURLWithPath:filePath];
    
    self.moviePlayerController = [[MPMoviePlayerController alloc]initWithContentURL:videoURL];
    self.moviePlayerController.controlStyle = MPMovieControlStyleDefault;
    self.moviePlayerController.shouldAutoplay = YES;
    
    //    [super viewDidAppear:animated];
    
    [self.view addSubview:self.moviePlayerController.view];
    
    [self.moviePlayerController setFullscreen:YES animated:YES];
    
}

- (IBAction)shareItem:(id)sender {
    
    NSString *title = _DetailModal[0];
    NSString *description = _DetailModal[1];
    UIImage *image = [UIImage imageNamed:_DetailModal[2]];
    
    UIActivityViewController *controller =
    [[UIActivityViewController alloc]
     initWithActivityItems:@[title, description, image]
     applicationActivities:nil];
    
    [self presentViewController:controller animated:YES completion:nil];

    
}
- (IBAction)meowButton:(id)sender {
    
    self.meow.hidden = NO;
    
    AudioServicesPlaySystemSound(soundID);
    
    [NSTimer scheduledTimerWithTimeInterval:1.3 target:self  selector:@selector (hideLabel) userInfo:nil repeats:NO];
    
}

-(void)hideLabel{
    
    self.meow.hidden = YES;
    
}


@end
