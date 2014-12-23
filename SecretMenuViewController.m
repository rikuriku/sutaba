//
//  SecretMenuViewController.m
//  がんしみゅ
//
//  Created by 鈴木 淳朗 on 2014/08/14.
//  Copyright (c) 2014年 陸 野口. All rights reserved.
//

#import "SecretMenuViewController.h"
//#import "DescriptionViewController.h"

@implementation SecretMenuViewController
@synthesize menuName = _menuName;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    NSLog(@"Junro Comment -------------------------");
    NSLog(@"SecretMenuViewController---------------");
    NSLog(@"menuName:%@",_menuName);
    NSLog(@"Junro Comment -------------------------");
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // メニューリストのファイルを読み込む
    NSString *path2 = [[NSBundle mainBundle] pathForResource:@"ura-Menu" ofType:@"plist"];
    NSDictionary *dict2 = [NSDictionary dictionaryWithContentsOfFile:path2];
    
    // TextViewの中身に説明文を設定する
    self.description.text = [dict2 objectForKey:self.menuName];
    
    // 説明文が書かれているTextViewを、編集不可にする
    self.description.editable = NO;
    
    self.nameLabel.text = self.menuName;
    //self.menuImageView.image= [UIImage imageNamed:self.menuName];
    
    
    NSLog(@"self.menuName == %@", self.menuName);
    
    if ([self.menuName isEqualToString:@"キャラメルフラペチーノ"]){
        NSLog(@"キャラメル");
        self.menuImageView.image= [UIImage imageNamed:@"ホワイトチョコレート　モカフラペチーノ.png"];
    }else if([self.menuName isEqualToString:@"コーヒーフラペチーノ"]){
        self.menuImageView.image= [UIImage imageNamed:@"エスプレッソフラペチーノ.png"];
        
    }else if([self.menuName isEqualToString:@"ダークモカチップクリームフラペチーノ"]){
        self.menuImageView.image= [UIImage imageNamed:@"エクストラコーヒー　ノンホイップ　ダークモカチップフラペチーノ.png"];
        
    }else if([self.menuName isEqualToString:@"バニラクリームフラペチーノ"]){
        self.menuImageView.image= [UIImage imageNamed:@"オレオフラペチーノ.png"];

    }else if([self.menuName isEqualToString:@"抹茶クリームフラペチーノ"]){
        self.menuImageView.image= [UIImage imageNamed:@"コーヒー抹茶クリームフラペチーノ.png"];

    }else if([self.menuName isEqualToString:@"ダークモカチップクリームフラペチーノ"]){
        self.menuImageView.image= [UIImage imageNamed:@"エクストラコーヒー　ノンホイップ　ダークモカチップフラペチーノ.png"];

    }else if([self.menuName isEqualToString:@"バニラクリームフラペチーノ"]){
        self.menuImageView.image= [UIImage imageNamed:@"オレオフラペチーノ.png"];
        
    }else if([self.menuName isEqualToString:@"抹茶クリームフラペチーノ"]){
        self.menuImageView.image= [UIImage imageNamed:@"オレオフラペチーノ.png"];
    }else if([self.menuName isEqualToString:@"マンゴーパッションティーフラペチーノ"]){
        self.menuImageView.image= [UIImage imageNamed:@"不思議と桃の味がするフラペチーノ.png"];
    }else if([self.menuName isEqualToString:@"カフェモカ"]){
        self.menuImageView.image= [UIImage imageNamed:@"ノンホイップ・アーモンド・ソイ・モカ.png"];
    
    }else if([self.menuName isEqualToString:@"スターバックスラテ"]){
        self.menuImageView.image= [UIImage imageNamed:@"ハニーミルクラテ.png"];
    }else if([self.menuName isEqualToString:@"カプチーノ"]){
        self.menuImageView.image= [UIImage imageNamed:@"ココアカプチーノ.png"];
    }else if([self.menuName isEqualToString:@"キャラメルマキアート"]){
        self.menuImageView.image= [UIImage imageNamed:@"ゼブラマキアート.png"];
    }else if([self.menuName isEqualToString:@"抹茶ティーラテ"]){
        self.menuImageView.image= [UIImage imageNamed:@"ゼブラマキアート.png"];
    }else if([self.menuName isEqualToString:@"チャンキークッキーフラペチーノ"]){
        self.menuImageView.image= [UIImage imageNamed:@"チャンキークッキーコーヒージェリーフラペチーノ.png"]
        ;
    }else if([self.menuName isEqualToString:@"カフェアメリカーノ"]){
        self.menuImageView.image= [UIImage imageNamed:@"ヘーゼルナッツカフェアメリカーノ.png"];
    }else if([self.menuName isEqualToString:@"キャラメルマキアート"]){
        self.menuImageView.image= [UIImage imageNamed:@"ゼブラマキアート.png"];
    }else if([self.menuName isEqualToString:@"ソイラテ"]){
        self.menuImageView.image= [UIImage imageNamed:@"ソイラテ　カロリー.png"];
    }else if([self.menuName isEqualToString:@"スターバックスティーラテ"]){
        self.menuImageView.image= [UIImage imageNamed:@"バニララテ.png"];
    }else if([self.menuName isEqualToString:@"チャイティーラテ"]){
        self.menuImageView.image= [UIImage imageNamed:@"ジェイソンスペシャル.png"];

        

        
        


    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
