//
//  VacationViewController.m
//  IntergalaticTravel1
//
//  Created by Rich Fellure on 12/10/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "VacationViewController.h"

@interface VacationViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *starImageView;

@end

@implementation VacationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.starImageView.image = self.starImage;
}

@end
