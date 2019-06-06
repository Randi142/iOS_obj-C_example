//
//  ViewControllerTwo.m
//  MovieTable
//
//  Created by Randi on 5/6/2019.
//  Copyright © 2019 student. All rights reserved.
//

#import "ViewControllerTwo.h"


@interface ViewControllerTwo (){
    int picNum;
    float myRedValue;
    float myGreenValue;
    float myBlueValue;
}

@end

@implementation ViewControllerTwo

- (void)viewDidLoad {
    [super viewDidLoad];
    picNum = 1;
    NSString *myString = @"ragdollL1.png";
    _imgView.image = [UIImage imageNamed:myString];
    myRedValue=1.0f;
    myGreenValue=1.0f;
    myBlueValue=1.0f;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    //for change imageView image
- (IBAction)btnOneClick:(id)sender {
    NSString *myString = @"ragdollL1.png";
    _imgView.image = [UIImage imageNamed:myString];
}
- (IBAction)btnTwoClick:(id)sender {
    NSString *myString = @"ragdollL2.png";
    _imgView.image = [UIImage imageNamed:myString];
}
- (IBAction)btnThreeClick:(id)sender {
    NSString *myString = @"ragdollL3.png";
    _imgView.image = [UIImage imageNamed:myString];
}


- (IBAction)segmentChanged:(id)sender { //for change background color
    
    int index;
    index = (int)self.mySegmentControl.selectedSegmentIndex;
    
    switch (index)
    {
        case 0:
            self.mySlider.value = myRedValue;
            break;
        case 1:
            self.mySlider.value = myGreenValue;
            break;
        case 2:
            self.mySlider.value = myBlueValue;
            break;
    }
    
}

- (IBAction)sliderMoved:(id)sender {    //for change background color
    
    int num = (int)self.mySegmentControl.selectedSegmentIndex;
    switch (num)
    {
        case 0:
            myRedValue = self.mySlider.value;
            break;
        case 1:
            myGreenValue = self.mySlider.value;
            break;
        case 2:
            myBlueValue = self.mySlider.value;
            break;
    }
    self.view.backgroundColor = [UIColor colorWithRed:myRedValue
                                                green:myGreenValue
                                                 blue:myBlueValue
                                                alpha:1.0];
    
}
@end
