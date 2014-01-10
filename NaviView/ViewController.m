//
//  ViewController.m
//  NaviView
//
//  Created by SDT-1 on 2014. 1. 10..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *table;

@end

@implementation ViewController {
    NSArray *data;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL_ID" forIndexPath:indexPath];
    cell.textLabel.text = [data objectAtIndex:indexPath.row];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DetailViewController *detail = segue.destinationViewController;
    UITableViewCell *selectedCell = (UITableViewCell *)sender;
    NSIndexPath *selectedIndex = [self.table indexPathForCell:selectedCell];
    detail.urlStr = [data objectAtIndex:selectedIndex.row];
}
- (void)viewWillAppear:(BOOL)animated {
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated {
    self.navigationController.navigationBarHidden = NO;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    data = @[@"apple.com", @"google.co", @"daum.net", @"naver.com"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
