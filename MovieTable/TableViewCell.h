//
//  TableViewCell.h
//  MovieTable
//
//  Created by student on 22/9/2017.
//  Copyright © 2017 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell



@property (strong, nonatomic) IBOutlet UILabel *TitleLabel;

@property (strong, nonatomic) IBOutlet UILabel *DescriptionLabel;

@property (strong, nonatomic) IBOutlet UIImageView *ThumbImage;


@end
