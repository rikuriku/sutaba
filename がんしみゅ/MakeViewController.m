//
//  MakeViewController.m
//  がんしみゅ
//
//  Created by 陸 野口 on 2014/05/06.
//  Copyright (c) 2014年 陸 野口. All rights reserved.
//

#import "MakeViewController.h"

@implementation MakeViewController



- (void)viewDidLoad
{
 
    
    [super viewDidLoad];
    
    self.makenameLabel.text = self.nameText;
    self.makeImageView.image= [UIImage imageNamed:self.nameText];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end

