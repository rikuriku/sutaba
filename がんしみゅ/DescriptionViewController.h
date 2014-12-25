//
//  DescriptionViewController.h
//  がんしみゅ
//
//  Created by 陸 野口 on 2014/05/04.
//  Copyright (c) 2014年 陸 野口. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DescriptionViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *menuImageView;
@property (weak, nonatomic) IBOutlet UITextView  *descriptionText;
@property (weak, nonatomic) IBOutlet UIButton *ura;

@property (weak,nonatomic) NSString *menuName;

@property NSString *uranameText;

@end
