//
//  ViewController.m
//  UITableView Sample
//
//  Created by Chu Nam Anh on 6/21/16.
//  Copyright © 2016 Chu Nam Anh. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController () < UITableViewDelegate , UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *BTN_TableView;

@end

@implementation ViewController

-(NSInteger)numberOfSectionInTableView:(UITableView*)tableView
{
    return 3;
}

-(NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section==1) {
        return 4;
    }
    return 2;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _BTN_TableView.delegate = self;
    _BTN_TableView.dataSource = self;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
