//
//  DetailViewController.m
//  がんしみゅ
//
//  Created by 陸 野口 on 2014/05/03.
//  Copyright (c) 2014年 陸 野口. All rights reserved.
//

#import "DetailViewController.h"

@implementation DetailViewController
@synthesize menuName = _menuName;

- (void)viewDidLoad{
    self.nameLabel.text = self.menuName;
}

@end
