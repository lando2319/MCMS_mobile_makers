//
//  ViewController.m
//  MCMS
//
//  Created by MIKE LAND on 10/7/14.
//  Copyright (c) 2014 MIKE LAND. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"
#import "CreatureViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textForCreature;
@property (weak, nonatomic) IBOutlet UITableView *monsterTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MagicalCreature *bigMonster = [[MagicalCreature alloc] init];
    bigMonster.name = @"Bill";
    MagicalCreature *smallMonster = [[MagicalCreature alloc] init];
    smallMonster.name = @"Wack";
    MagicalCreature *mediumMonster = [[MagicalCreature alloc] init];
    mediumMonster.name = @"Tim";
    self.creatures = [NSMutableArray arrayWithObjects:bigMonster, smallMonster, mediumMonster, nil];
    NSLog(@"%@", smallMonster.name);

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.creatures.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellID" forIndexPath:indexPath];



    NSLog(@"%@", cell);
    MagicalCreature *creatureActual = [self.creatures objectAtIndex:indexPath.row];
    cell.textLabel.text = creatureActual.name;
    return cell;
}

- (IBAction)addCreature:(id)sender {

    MagicalCreature *newMonster = [[MagicalCreature alloc] init];
    newMonster.name = self.textForCreature.text;
    [self.creatures addObject:newMonster];
    [self.monsterTableView reloadData];
    self.textForCreature.text = @"";
    



}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell *)cell {
    CreatureViewController *creatureView = [segue destinationViewController];
    creatureView.creatureName = cell.textLabel.text;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
