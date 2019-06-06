//
//  ViewControllerTwo.h
//  MovieTable
//
//  Created by Randi on 5/6/2019.
//  Copyright © 2019 student. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <AVFoundation/AVFoundation.h>

@interface ViewControllerTwo : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *mySegmentControl;
@property (weak, nonatomic) IBOutlet UISlider *mySlider;
- (IBAction)segmentChanged:(id)sender;
- (IBAction)sliderMoved:(id)sender;

@end
