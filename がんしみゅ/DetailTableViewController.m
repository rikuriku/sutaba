//
//  DetailTableViewController.m
//  がんしみゅ
//
//  Created by 陸 野口 on 2014/05/04.
//  Copyright (c) 2014年 陸 野口. All rights reserved.
//

#import "DetailTableViewController.h"
#import "DescriptionViewController.h"
#import "BaseTableViewController.h"

@implementation DetailTableViewController




-(void)viewDidLoad{
    NSLog(@"%@",self.nameText);
    if ([self.nameText isEqualToString:@"**"]){
        dataArray = [[NSArray alloc] initWithObjects:
                     @"1",
                     @"2",
                     nil];
    }else if([self.nameText isEqualToString:@"今期限定メニュー"]){
        dataArray = [[NSArray alloc] initWithObjects:
                     @"チャンキー クッキー フラペチーノ",
                     @"チョコレート ブラウニー 抹茶 クリーム フラペチーノ",
                     @"フレッシュ バナナ ＆ キャラメル クリーム フラペチーノ",
                     @"フレッシュ バナナ ＆ チョコレート クリーム フラペチーノ",
                    nil];
    }else if([self.nameText isEqualToString:@"フラペチーノ"]){
        dataArray = [[NSArray alloc] initWithObjects:
                     @"キャラメル フラペチーノ",
                     @"コーヒー フラペチーノ",
                     @"ダーク モカ チップ クリーム フラペチーノ",
                     @"チャンキー クッキー フラペチーノ",
                     @"チョコレート ブラウニー 抹茶 クリーム フラペチーノ",
                     @"バニラ クリーム フラペチーノ",
                     @"フレッシュ バナナ ＆ キャラメル クリーム フラペチーノ",
                     @"フレッシュ バナナ ＆ チョコレート クリーム フラペチーノ",
                     @"抹茶 クリーム フラペチーノ",
                     @"マンゴー パッション ティー フラペチーノ",
                                          nil];
    }else if([self.nameText isEqualToString:@"コーヒー"]){
        dataArray = [[NSArray alloc] initWithObjects:
                     @"カフェミスト",
                     @"コーヒー プレス",
                     @"ドリップコーヒー",
                     @"ポットサービス",
                    nil];
    }else if([self.nameText isEqualToString:@"スターバックス　リザーブ"]){
        dataArray = [[NSArray alloc] initWithObjects:
                     @"スターバックス リザーブ　コーヒープレス",
                     @"スターバックス リザーブ　クローバー",
                     nil];
        }else if([self.nameText isEqualToString:@"エスプレッソ　ビバレッジ"]){
        dataArray = [[NSArray alloc] initWithObjects:
                     @"エスプレッソ",
                     @"エスプレッソ コンパナ",
                     @"エスプレッソ マキアート",
                     @"カフェ アメリカーノ",
                     @"カフェモカ",
                     @"カプチーノ",
                     @"キャラメル マキアート",
                     @"スターバックス ラテ",
                     @"ソイ ラテ",
                     @"ダブル トール クラシック ラテ",
                     @"フォーム ドピオ エスプレッソ",
                     @"ホワイト モカ",
                                          nil];
    }else if([self.nameText isEqualToString:@"ティービバレッジ"]){
        dataArray = [[NSArray alloc] initWithObjects:
                     @"アイス ティー",
                     @"スターバックス ティー ラテ",
                     @"チャイ ティー ラテ",
                     @"ホット ティー",
                     @"抹茶 ティー ラテ",
                     nil];
    }else if([self.nameText isEqualToString:@"その他ビバレッジ"]){
        dataArray = [[NSArray alloc] initWithObjects:
                     @"キッズ ビバレッジ",
                     @"キャラメル スチーマー",
                     @"ココア",
                     @"１００％ フルーツ ジュース オレンジ",
                     @"１００％ フルーツ ジュース グレープフルーツ",
                     @"１００％ フルーツ ジュース ダブルスクイーズ",
                     @"ｂｅ ｊｕｉｃｙ！ Kｉｄｓ（オレンジ／アップル）",
                     nil];
    }else if([self.nameText isEqualToString:@"コンビニ商品(ビバレッジ)"]){
        dataArray = [[NSArray alloc] initWithObjects:
                     @"スターバックス ディスカバリーズ® 京都抹茶ラテ",
                     @"スターバックス ディスカバリーズ® シアトルラテ",
                     @"スターバックス ディスカバリーズ® バニララテ ",
                     @"スターバックス ディスカバリーズ® ミラノエスプレッソ",
                     nil];
    }else if([self.nameText isEqualToString:@"過去限定メニュー"]){
        dataArray = [[NSArray alloc] initWithObjects:
                     @"今期1",
                     @"今期2",
                     nil];



    }else{
        dataArray = [[NSArray alloc] initWithObjects:@"", nil];
    }
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return[dataArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    if (!cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    cell.textLabel.text = [dataArray objectAtIndex:indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *nameText = [tableView cellForRowAtIndexPath:indexPath].textLabel.text;
    DescriptionViewController *descriptionVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DescriptionViewController"];
    descriptionVC.nameText = nameText;
    [self.navigationController pushViewController:descriptionVC animated:YES];
}


@end
