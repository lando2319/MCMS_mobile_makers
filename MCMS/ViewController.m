//
//  ViewController.m
//  MCMS
//
//  Created by MIKE LAND on 10/7/14.
//  Copyright (c) 2014 MIKE LAND. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MagicalCreature *bigMonster = [[MagicalCreature alloc] init];
    MagicalCreature *smallMonster = [[MagicalCreature alloc] init];
    MagicalCreature *mediumMonster = [[MagicalCreature alloc] init];
    self.creatures = [NSMutableArray arrayWithObjects:bigMonster, smallMonster, mediumMonster, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
