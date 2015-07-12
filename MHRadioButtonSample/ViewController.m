//
//  ViewController.m
//  MHRadioButtonSample
//
//  Created by 小屋敷 圭史 on 2015/07/12.
//  Copyright © 2015年 小屋敷 圭史. All rights reserved.
//

#import "ViewController.h"
#import "MHRadioButtonManager.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutletCollection(UIButton) NSArray *buttons;
@property (nonatomic, strong) MHRadioButtonManager *radioButtonManager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.radioButtonManager = [[MHRadioButtonManager alloc] initWithButtons:self.buttons];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
