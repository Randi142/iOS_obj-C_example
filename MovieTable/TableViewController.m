//
//  TableViewController.m
//  MovieTable
//
//  Created by student on 22/9/2017.
//  Copyright © 2017 student. All rights reserved.
//

#import "TableViewController.h"


#import "TableViewCell.h"


#import "DetailViewController.h"



@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _Titles = @[@"Ragdoll", @"American shorthair", @"British shorthair",@"American curl",];
    _Descriptions = @[@"United States", @"North America", @"Great Britain",@"United States",];
    _Images = @[@"ragdoll.png", @"american-shorthair.png", @"british-shorthair.png",@"American_Curl.png",];
    _Movies = @[@"Ragdoll", @"American_shorthair", @"British_shorthair",@"american_curl",];
    
    UIImage *image = [UIImage imageNamed: @"Background.png"];
    UIImageView *backImage = [[UIImageView alloc] initWithImage: image];
    backImage.contentMode = UIViewContentModeTopLeft;
    self.tableView.backgroundView = backImage;
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:117/255.0f green:204/255.0f blue:32/255.0f alpha:1];
    if ([self.navigationController.navigationBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)] ) {
        UIImage *image = [UIImage imageNamed:@"logo.jpg"];
        [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _Titles.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"TableViewCell";
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    NSInteger row = [indexPath row];
    
    cell.TitleLabel.text = _Titles[row];
    
    cell.DescriptionLabel.text = _Descriptions[row];
    
    cell.ThumbImage.image = [UIImage imageNamed:_Images[row]];
    
    NSLog(@"Hi %@",_Titles[row]);
    
    [cell setBackgroundColor:[UIColor clearColor]];
    
    cell.TitleLabel.textColor = [UIColor blackColor];
    cell.DescriptionLabel.textColor = [UIColor purpleColor];
    
    UIImageView *bgView = [[UIImageView alloc] initWithFrame:CGRectZero];
    [cell setBackgroundView:bgView];
    ((UIImageView *)cell.backgroundView).image = [UIImage imageNamed:@"cellimage.jpg"];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"ShowDetails"]) {
        
        NSLog(@"ShowDetails");
        
        DetailViewController *detailViewController = [segue destinationViewController];
        
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        
        NSInteger row = [myIndexPath row];
        
        NSLog(@"Segue %@",_Titles[row]);
        
        //        detailViewController.DetailModal = @[_Titles[row], _Descriptions[row], _Images[row]];
        
//        detailViewController.DetailModal = @[_Titles[row], _Descriptions[row], _Images[row]];
        
        detailViewController.DetailModal = @[_Titles[row], _Descriptions[row], _Images[row], _Movies[row]];

        
    }
}




@end
