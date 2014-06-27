//
//  DescriptionViewController.m
//  がんしみゅ
//
//  Created by 陸 野口 on 2014/05/04.
//  Copyright (c) 2014年 陸 野口. All rights reserved.
//

#import "DescriptionViewController.h"

@implementation DescriptionViewController

-(void)viewDidLoad{
    NSLog(@"%@",self.nameText);
    self.nameLabel.text = self.nameText;
    self.menuImageView.image= [UIImage imageNamed:self.nameText];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Menu" ofType:@"plist"];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    NSLog(@"%@",[dict objectForKey:self.nameText]);
    self.description.text = [dict objectForKey:self.nameText];
}


@end
