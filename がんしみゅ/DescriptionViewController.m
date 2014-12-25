//
//  DescriptionViewController.m
//  がんしみゅ
//
//  Created by 陸 野口 on 2014/05/04.
//  Copyright (c) 2014年 陸 野口. All rights reserved.
//

#import "DescriptionViewController.h"
#import "SecretMenuViewController.h"

@implementation DescriptionViewController
@synthesize menuName = _menuName;


@synthesize uranameText;


-(void)viewDidLoad{
    NSLog(@"Junro Comment -------------------------");
    NSLog(@"DescriptionViewController--------------");
    NSLog(@"menuName:%@",_menuName);
    NSLog(@"Junro Comment -------------------------");
    
    self.nameLabel.text = self.menuName;
    self.menuImageView.image= [UIImage imageNamed:self.menuName];
    
    // メニューリストのファイルを読み込む
    NSString *path1 = [[NSBundle mainBundle] pathForResource:@"Menu" ofType:@"plist"];
    NSDictionary *dict1 = [NSDictionary dictionaryWithContentsOfFile:path1];
    
    // TextViewの中身に説明文を設定する
    self.descriptionText.text = [dict1 objectForKey:self.menuName];
    
    // 説明文が書かれているTextViewを、編集不可にする
    self.descriptionText.editable = NO;
    
    NSString *path2 = [[NSBundle mainBundle] pathForResource:@"ura-Menu" ofType:@"plist"];
    NSDictionary *dict2 = [NSDictionary dictionaryWithContentsOfFile:path2];
    
    uranameText = [dict2 objectForKey:self.menuName
                   ];
    
    if (uranameText == nil) {
        self.ura.hidden = YES;
        NSLog(@"naine");
        
    } else {
        self.ura.hidden = NO;
        
        NSLog(@"aruyo");
    }
    
     
}

- (IBAction)showSecret:(id)sender{
    SecretMenuViewController *secretVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecretMenuViewController"];
    
    // detailVC.nameText = nameText;
    secretVC.menuName = _menuName;
    
    [self.navigationController pushViewController:secretVC animated:YES];
    
}



@end
