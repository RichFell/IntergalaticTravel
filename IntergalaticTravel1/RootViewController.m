//
//  ViewController.m
//  IntergalaticTravel1
//
//  Created by Rich Fellure on 12/10/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "RootViewController.h"
#import "VacationViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    VacationViewController *vacationVC = segue.destinationViewController;
    if ([segue.identifier isEqual: @"RedDwarfSegue"])
    {
        vacationVC.isBlueStar = false;
        vacationVC.starImage = [UIImage imageNamed:@"RedDwarf"];
    }
    else
    {
        vacationVC.isBlueStar = true;
        vacationVC.starImage = [UIImage imageNamed:@"BlueStar"];
    }
}

-(IBAction)unwindAndBookIt:(UIStoryboardSegue *)segue
{
    VacationViewController *vacationVc =    segue.sourceViewController;
    if (vacationVc.isBlueStar)
    {
        NSLog(@"Booked Travel to the Blue Star");
    }
    else
    {
        NSLog(@"Booked Travel to the Red Dwarf");
    }
}

@end
