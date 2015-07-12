//
//  MHRadioButtonManager.m
//  MHRadioButtonSample
//
//  Created by 小屋敷 圭史 on 2015/07/12.
//  Copyright © 2015年 小屋敷 圭史. All rights reserved.
//

#import "MHRadioButtonManager.h"

@interface MHRadioButtonManager()

@property (nonatomic, strong) NSArray *buttons;

@end

@implementation MHRadioButtonManager

- (instancetype)initWithButtons:(NSArray *)buttons
{
    self = [super init];
    if (self) {
        self.buttons = buttons;
    }
    return self;
}

#pragma mark - getter
- (void)setButtons:(NSArray *)buttons
{
    for (UIButton *button in buttons) {
        [button addTarget:self action:@selector(pushButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    _buttons = buttons;
}

#pragma mark - private
- (void)pushButton:(UIButton *)button
{
    button.selected = !button.selected;
    if (button.selected) {
        [self switchOffOtherButton:button];
    }
}

- (void)switchOffOtherButton:(UIButton *)switchOnButton
{
    for (UIButton *button in self.buttons) {
        if (![button isEqual:switchOnButton]) {
            button.selected = NO;
        }
    }
}



@end
