//
//  SecretMenuViewController.h
//  がんしみゅ
//
//  Created by 鈴木 淳朗 on 2014/08/14.
//  Copyright (c) 2014年 陸 野口. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecretMenuViewController : UIViewController

@property IBOutlet UILabel *nameLabel;
@property IBOutlet UIImageView *menuImageView;
@property IBOutlet UITextView *description;

@property (weak,nonatomic) NSString *menuName;

@end
