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
@synthesize menuName = _menuName;

-(void)viewDidLoad{
    
    
    
    
    
    if ([self.menuName isEqualToString:@"**"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"1",
                     @"2",
                     nil];
    } else if ([self.menuName isEqualToString:@"今期限定メニュー"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"ストロベリーディライトフラペチーノ",
                     @"開発中、、、",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"590",
                      @"5",
                      nil];
    } else if ([self.menuName isEqualToString:@"フラペチーノ"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"キャラメルフラペチーノ",//////
                     @"コーヒーフラペチーノ",//
                     @"ダークモカチップクリームフラペチーノ",//
                     @"チャンキークッキーフラペチーノ",
                     @"バニラクリームフラペチーノ",
                     @"抹茶クリームフラペチーノ",//
                     @"マンゴーパッションティーフラペチーノ",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"Tall 430",
                      @"Tall 400",
                      @"Tall 470",
                      @"Tall 540",
                      @"Tall 450",
                      @"Tall 450",
                      @"Tall 450",
                      nil];
        imageArray = [[NSArray alloc] initWithObjects:
                      @"キャラメルフラペチーノ.png",
                      @"コーヒーフラペチーノ.png",
                      @"ダークモカチップクリームフラペチーノ.png",
                      @"チャンキークッキーフラペチーノ.png",
                      @"バニラクリームフラペチーノ.png",
                      @"抹茶クリームフラペチーノ.png",
                      @"マンゴーパッションティーフラペチーノ.png",
                      nil];
        
        
        
        
        
            } else if ([self.menuName isEqualToString:@"コーヒー"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"カフェミスト",
                     @"コーヒープレス",
                     @"ドリップコーヒー",
                     @"ポットサービス",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"Tall 350",
                      @"370",
                      @"Tall 320",
                      @"5杯分 1,000",
                      nil];
                imageArray = [[NSArray alloc] initWithObjects:
                              @"カフェミスト.png",
                              @"コーヒープレス.png",
                              @"ドリップコーヒー.png",
                              @"ポットサービス.png",
                              
                              nil];
    } else if ([self.menuName isEqualToString:@"スターバックス　リザーブ"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"スターバックスリザーブクローバー",
                     @"スターバックスリザーブコーヒープレス",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"Tall 530",
                      @"480",
                      nil];
        imageArray = [[NSArray alloc] initWithObjects:
                      @"スターバックスリザーブクローバー.png",
                      @"スターバックスリザーブコーヒープレス.png",
                                            nil];

    } else if ([self.menuName isEqualToString:@"エスプレッソビバレッジ"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"エスプレッソ",
                     @"エスプレッソコンパナ",
                     @"エスプレッソマキアート",
                     @"カフェアメリカーノ",
                     @"カフェモカ",
                     @"カプチーノ",
                     @"キャラメルマキアート",
                     @"スターバックスラテ",
                     @"ソイラテ",
                     @"ホワイトモカ",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"300",
                      @"300",
                      @"300",
                      @"Tall 340",
                      @"Tall 420 ",
                      @"Tall 420 ",
                      @"Tall 360",
                      @"Tall 410",
                      @"Tall 360",
                      @"Tall 410 ",
                      nil];
        imageArray = [[NSArray alloc] initWithObjects:
                      @"エスプレッソ.png",
                      @"エスプレッソコンパナ.png",
                      @"エスプレッソマキアート.png",
                      @"カフェアメリカーノ.png",
                      @"カフェモカ.png",
                      @"カプチーノ.png",
                      @"キャラメルマキアート.png",
                      @"スターバックスラテ.png",
                      @"ソイラテ.png",
                      @"ホワイトモカ.png",
                      nil];
    } else if ([self.menuName isEqualToString:@"ティービバレッジ"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"アイスティー",
                     @"スターバックスティーラテ",
                     @"チャイティーラテ",
                     @"ホットティー",
                     @"抹茶ティーラテ",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"Tall 320",
                      @"Tall 400",
                      @"Tall 400",
                      @"Tall 330",
                      @"Tall 420",
                      nil];
        imageArray = [[NSArray alloc] initWithObjects:
                      @"アイスティー.png",
                      @"スターバックスティーラテ.png",
                      @"チャイティーラテ.png",
                      @"ホットティー.png",
                      @"抹茶ティーラテ.png",
                      
                      nil];

    } else if ([self.menuName isEqualToString:@"その他ビバレッジ"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"キッズ ビバレッジ",
                     @"キャラメルスチーマー",
                     @"ココア",
                     @"フルーツジュースオレンジ",
                     @"フルーツジュースグレープフルーツ",
                     @"フルーツジュースダブルスクイーズ",
                     @"be juicy! Kids",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"170",
                      @"Tall 400 ",
                      @"Tall 390",
                      @"200",
                      @"200",
                      @"210",
                      @"190",
                      nil];
        imageArray = [[NSArray alloc] initWithObjects:
                      @"キッズ ビバレッジ.png",
                      @"キャラメルスチーマー.png",
                      @"ココア.png",
                      @"フルーツジュースオレンジ.png",
                      @"フルーツジュースグレープフルーツ.png",
                       @"フルーツジュースダブルスクイーズ.png",
                       @"be juicy! Kids.png",
                      
                      nil];

    } else if ([self.menuName isEqualToString:@"コンビニ商品(ビバレッジ)"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"京都抹茶ラテ",
                     @"シアトルラテ",
                     @"ニューヨークノンスウィートラテ",
                     @"ミラノエスプレッソ",
                     @"アイスコーヒー with サマージェリー",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"200",
                      @"200",
                      @"200",
                      @"200",
                      @"200",
                      nil];
        
        imageArray = [[NSArray alloc] initWithObjects:
                      @"京都抹茶ラテ.png",
                      @"シアトルラテ.png",
                      @"ニューヨークノンスウィートラテ.png",
                      @"ミラノエスプレッソ.png",
                      @"アイスコーヒー with サマージェリー.png",
                                        nil];

    } else if ([self.menuName isEqualToString:@"過去限定メニュー"]) {
        dataArray = [[NSArray alloc] initWithObjects:nil];
    } else if ([self.menuName isEqualToString:@"チョコレートが飲みたい"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"カフェモカ",
                     @"be juicy! Kids",
                     @"ココア",
                     @"ダークモカチップクリームフラペチーノ",
                     @"ホワイトモカ",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"Tall 420",
                      @"170",
                      @"Tall 390",
                      @"Tall 470",
                      @"170",
                      nil];
        imageArray = [[NSArray alloc] initWithObjects:
                      @"カフェモカ.png",
                      @"be juicy! Kids.png",
                      @"ココア.png",
                      @"ダークモカチップクリームフラペチーノ.png",
                      @"ホワイトモカ.png",
                      nil];

    } else if ([self.menuName isEqualToString:@"キャラメルが飲みたい"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"キャラメルフラペチーノ",
                     @"キャラメルマキアート",
                     @"キャラメルスチーマー",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"Tall 450",
                      @"Tall 410",
                      @"Tall 400",
                      nil];
        imageArray = [[NSArray alloc] initWithObjects:
                      @"キャラメルフラペチーノ.png",
                      @"キャラメルマキアート.png",
                      @"キャラメルスチーマー.png",
                                            nil];
    } else if ([self.menuName isEqualToString:@"コーヒーが飲みたい"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"コーヒーフラペチーノ",//
                     @"キャラメルフラペチーノ",//
                     @"ダークモカチップクリームフラペチーノ",
                     @"ドリップコーヒー",
                     @"コーヒープレス",
                     @"カフェミスト",
                     @"スターバックスリザーブコーヒープレス",
                     @"スターバックスリザーブクローバー",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"Tall 400",
                      @"Tall 450",
                      @"Tall 470",
                      @"Tall 320",
                      @"370",
                      @"Tall 350",
                      @"480",
                      @"Tall 530",
                      nil];
        imageArray = [[NSArray alloc] initWithObjects:
                      @"コーヒーフラペチーノ.png",
                      @"キャラメルフラペチーノ.png",
                      @"ダークモカチップクリームフラペチーノ.png",
                      @"ドリップコーヒー.png",
                      @"コーヒープレス.png",
                      @"カフェミスト.png",
                      @"スターバックスリザーブコーヒープレス.png",
                      @"スターバックスリザーブクローバー.png",
                      nil];
    } else if ([self.menuName isEqualToString:@"エスプレッソが飲みたい"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"カプチーノ",
                     @"キャラメルマキアート",
                     @"スターバックスラテ",
                     @"ソイラテ",
                     @"カフェアメリカーノ",
                     @"ホワイトモカ",
                     @"カフェモカ",
                     @"シアトルラテ",
                     @"ミラノエスプレッソ",
                     @"ニューヨーク ノンスウィートラテ",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"Tall 360",
                      @"Tall 410",
                      @"Tall 360",
                      @"Tall 410",
                      @"Tall 420",
                      @"Tall 420 ",
                      @"200",
                      @"200",
                      @"200",
                      @"200",
                      nil];
        imageArray = [[NSArray alloc] initWithObjects:
                      @"カプチーノ.png",
                      @"キャラメルマキアート.png",
                      @"スターバックスラテ.png",
                      @"ソイラテ.png",
                      @"カフェアメリカーノ.png",
                      @"ホワイトモカ.png",
                      @"カフェモカ.png",
                      @"シアトルラテ.png",
                      @"ミラノエスプレッソ.png",
                      @"ニューヨーク ノンスウィートラテ.png",
                      nil];
    } else if ([self.menuName isEqualToString:@"ミルクが飲みたい"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"カフェミスト",
                     @"カフェモカ",
                     @"カプチーノ",
                     @"be juicy! kids",
                     @"キャラメルスチーマー",
                     @"キャラメルマキアート",
                     @"ココア",
                     @"京都抹茶ラテ",
                     @"シアトルラテ",
                     @"ニューヨーク ノンスウィートラテ",
                     @"ミラノエスプレッソ",
                     @"スターバックスラテ",
                     @"スターバックスティーラテ",
                     @"チャイティーラテ",
                     @"バニラクリームフラペチーノ",
                     @"ホワイトモカ",
                     @"抹茶クリームフラペチーノ",
                     @"抹茶ティーラテ",
                     nil];
        

        moneyArray = [[NSArray alloc] initWithObjects:
                      @"Tall 450",
                      @"Tall 450",
                      @"Tall 360",
                      @"170",
                      @"Tall 400",
                      @"Tall 410",
                      @"Tall 390",
                      @"200",
                      @"200",
                      @"200",
                      @"200",
                      @"Tall 360   ",
                      @"Tall 400",
                      @"Tall 400 ",
                      @"Tall 450",
                      @"Tall 420",
                      @"Tall 450",
                      @"Tall 420",
                      nil];
        imageArray = [[NSArray alloc] initWithObjects:
                      @"カフェミスト.png",
                      @"カフェモカ.png",
                      @"カプチーノ.png",
                      @"be juicy! kids.png",
                      @"キャラメルスチーマー.png",
                      @"キャラメルマキアート.png",
                      @"ココア.png",
                      @"京都抹茶ラテ.png",
                      @"シアトルラテ.png",
                      @"ニューヨーク ノンスウィートラテ.png",
                      @"ミラノエスプレッソ.png",
                      @"スターバックスラテ.png",
                      @"スターバックスティーラテ.png",
                      @"チャイティーラテ.png",
                      @"バニラクリームフラペチーノ.png",
                      @"ホワイトモカ.png",
                      @"抹茶クリームフラペチーノ.png",
                      @"抹茶ティーラテ.png",
                      nil];
    } else if ([self.menuName isEqualToString:@"ホイップクリームが飲みたい"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"カフェモカ",
                     @"be juicy! kids",
                     @"キャラメルスチーマー",
                     @"キャラメルフラペチーノ",//
                     @"ココア",
                     @"ダークモカチップクリームフラペチーノ",
                     @"バニラクリームフラペチーノ",
                     @"ホワイトモカ",
                     @"抹茶クリームフラペチーノ",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"Tall  420",
                      @"170",
                      @"Tall 400",
                      @"Tall 450",
                      @"Tall 390",
                      @"Tall 470",
                      @"Tall 450",
                      @"Tall 420",
                      @"Tall 450",
                      nil];
        imageArray = [[NSArray alloc] initWithObjects:
                      @"カフェモカ.png",
                      @"be juicy! kids.png",
                      @"キャラメルスチーマー.png",
                      @"キャラメルフラペチーノ.png",//
                      @"ココア.png",
                      @"ダークモカチップクリームフラペチーノ.png",
                      @"バニラクリームフラペチーノ.png",
                      @"ホワイトモカ.png",
                      @"抹茶クリームフラペチーノ.png",
                      nil];

    } else if ([self.menuName isEqualToString:@"抹茶が飲みたい"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"抹茶クリームフラペチーノ",
                     @"抹茶ティーラテ",
                     @"京都抹茶ラテ",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"Tall 450",
                      @"Tall 420",
                      @"200",
                      nil];
        imageArray = [[NSArray alloc] initWithObjects:
                      @"抹茶クリームフラペチーノ.png",
                      @"抹茶ティーラテ.png",
                      @"京都抹茶ラテ.png",
                      nil];
    } else if ([self.menuName isEqualToString:@"バニラが飲みたい"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"キャラメルマキアート",
                     @"バニラクリームフラペチーノ",
                     @"抹茶クリームフラペチーノ",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"Tall 410",
                      @"Tall 450",
                      @"Tall 450",
                      nil];
        imageArray = [[NSArray alloc] initWithObjects:
                      @"キャラメルマキアート.png",
                      @"バニラクリームフラペチーノ.png",
                      @"抹茶クリームフラペチーノ.png",
                      nil];
    } else if ([self.menuName isEqualToString:@"ティーが飲みたい"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"アイスティー",
                     @"スターバックスティーラテ",
                     @"チャイティーラテ",
                     @"ホットティー",
                     @"マンゴーパッションティーフラペチーノ",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"Tall 320",
                      @"Tall 400",
                      @"Tall 400",
                      @"Tall 330",
                      @"Tall 450",
                      nil];
        imageArray = [[NSArray alloc] initWithObjects:
                      @"アイスティー.png",
                      @"スターバックスティーラテ.png",
                      @"チャイティーラテ.png",
                      @"ホットティー.png",
                      @"マンゴーパッションティーフラペチーノ.png",
                      nil];
    } else if ([self.menuName isEqualToString:@"今までの限定メニュー"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"ジンジャーブレッド ラテ",
                     @"スノー メイプル トフィー フラペチーノ",
                     @"スノー メイプル トフィー ラテ",
                     @"クランベリー ブリス ホワイト チョコレート フラペチーノ",
                     @"クランベリー ブリス ホワイト モカ",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"Tall 320",
                      @"Tall 400",
                      @"Tall 400",
                      @"Tall 330",
                      @"Tall 450",
                      nil];
        imageArray = [[NSArray alloc] initWithObjects:
                      @"ジンジャーブレッド ラテ.png",
                      @"スノー メイプル トフィー フラペチーノ.png",
                      @"スノー メイプル トフィー ラテ.png",
                      @"クランベリー ブリス ホワイト チョコレート フラペチーノ.png",
                      @"クランベリー ブリス ホワイト モカ.png",
                      nil];

    } else if ([self.menuName isEqualToString:@"焼菓子&ベーカリー"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"アメリカンワッフル",
                     @"クロワッサンハム＆チーズ",
                     @"シナモンロール",
                     @"シュガードーナツ",
                     @"ソーセージパイ",
                     @"チキンとチーズのタルティーヌ",
                     @"チョコレートチャンククッキー",
                     @"チョコレートチャンクスコーン",
                     @"夏野菜とベーコンのタルティーヌ",
                     @"バターミルクビスケット",
                     @"バターリッチマフィン",
                     @"ブルーベリースコーン",
                     @"ブルーベリーマフィン",
                     @"ブルーベリー＆チーズクリームドーナツ",
                     @"ホワイトチョコレートマカダミアクッキー",
                     @"レモンポピーシードスコーン",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"230",
                      @"280",
                      @"270",
                      @"190",
                      @"280",
                      @"270",
                      @"190",
                      @"220",
                      @"270",
                      @"230",
                      @"220",
                      @"220",
                      @"220",
                      @"230",
                      @"190",
                      @"220",
                      nil];
        imageArray = [[NSArray alloc] initWithObjects:
                      @"アメリカンワッフル.png",
                      @"クロワッサンハム＆チーズ.png",
                      @"シナモンロール.png",
                      @"シュガードーナツ.png",
                      @"ソーセージパイ.png",
                      @"チキンとチーズのタルティーヌ.png",
                      @"チョコレートチャンククッキー.png",
                      @"チョコレートチャンクスコーン.png",
                      @"夏野菜とベーコンのタルティーヌ.png",
                      @"バターミルクビスケット.png",
                      @"バターリッチマフィン.png",
                      @"ブルーベリースコーン.png",
                      @"ブルーベリーマフィン.png",
                      @"ブルーベリー＆チーズクリームドーナツ.png",
                      @"ホワイトチョコレートマカダミアクッキー.png",
                      @"レモンポピーシードスコーン.png",

                      nil];
    } else if ([self.menuName isEqualToString:@"デザート＆ケーキー"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"スターバックスティラミス",
                     @"デビルズケーキ",
                     @"ニューヨークチーズケーキ",
                     @"ブルーベリーレアチーズパイ",
                     @"マンゴーシフォンケーキ",
                     @"Coffee&Espresso カフェモカ",
                     @"Coffee&Espresso キャラメルマキアート",
                     @"Coffee&Espresso レモン",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"400",
                      @"380",
                      @"400",
                      @"420",
                      @"380",
                      @"330",
                      @"330",
                      @"330",
                      nil];
        imageArray = [[NSArray alloc] initWithObjects:
                      @"スターバックスティラミス.png",
                      @"デビルズケーキ.png",
                      @"ニューヨークチーズケーキ.png",
                      @"ブルーベリーレアチーズパイ.png",
                      @"マンゴーシフォンケーキ.png",
                      @"Coffee&Espresso カフェモカ.png",
                      @"Coffee&Espresso キャラメルマキアート.png",
                      @"Coffee&Espresso レモン.png",
                      nil];

    } else if ([self.menuName isEqualToString:@"サンドウィッチ&サラダ"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"ターキースイス＆ツナサラダ",
                     @"バジルチキン＆アボカドシュリンプ",
                     @"BLT＆エッグ",
                     @"サラダラップ チキンシーザー",
                     @"サラダラップ15品目メキシカンアボカド",
                     @"サラダラップ（根菜チキン）",
                     @"シーザーサラダ",
                     @"フィローネハム＆マリボーチーズ",
                     @"ベーグルサンドハム＆チーズ",
                     @"ベーグルサンドサーモン＆クリームチーズ",
                     @"ベーコンとほうれん草のキッシュ",
                     @"ホットベーグルサンドベーコン＆エッグ",
                     @"ミックスサンドイッチ",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"400",
                      @"400",
                      @"400",
                      @"360",
                      @"360",
                      @"280",
                      @"360",
                      @"400",
                      @"360",
                      @"380",
                      @"310",
                      @"360",
                      @"400",
                      nil];
        imageArray = [[NSArray alloc] initWithObjects:
                      @"ターキースイス＆ツナサラダ.png",
                      @"バジルチキン＆アボカドシュリンプ.png",
                      @"BLT＆エッグ.png",
                      @"サラダラップ チキンシーザー.png",
                      @"サラダラップ15品目メキシカンアボカド.png",
                      @"サラダラップ（根菜チキン）.png",
                      @"シーザーサラダ.png",
                      @"フィローネハム＆マリボーチーズ.png",
                      @"ベーグルサンドハム＆チーズ.png",
                      @"ベーグルサンドサーモン＆クリームチーズ.png",
                      @"ベーコンとほうれん草のキッシュ.png",
                      @"ホットベーグルサンドベーコン＆エッグ.png",
                      @"ミックスサンドイッチ.png",
                      nil];
    } else if ([self.menuName isEqualToString:@"パッケージフード"]) {
        dataArray = [[NSArray alloc] initWithObjects:
                     @"キャラメルポップコーン＆プレッツェル",
                     @"グラノラ",
                     @"チョコレートブラウニー",
                     @"ハニーワッフル",
                     @"バナナブレッド",
                     nil];
        moneyArray = [[NSArray alloc] initWithObjects:
                      @"280",
                      @"220",
                      @"200",
                      @"140",
                      @"210",
                      nil];
        imageArray = [[NSArray alloc] initWithObjects:
                      @"キャラメルポップコーン＆プレッツェル.png",
                      @"グラノラ.png",
                      @"チョコレートブラウニー.png",
                      @"ハニーワッフル.png",
                      @"バナナブレッド.png",
                      nil];
    } else {
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
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Cell"];
    }
    UILabel *idLabel = (UILabel*)[cell viewWithTag:1];
    idLabel.text = [dataArray objectAtIndex:indexPath.row];
    if ([idLabel.text length] >12) {
        idLabel.font=[UIFont systemFontOfSize:12];
    }
    UIImageView *idimageview = (UIImageView*)[cell viewWithTag:2];
    idimageview.image=[UIImage imageNamed:[imageArray objectAtIndex:indexPath.row]];
    UILabel *idkinngaku = (UILabel*)[cell viewWithTag:3];
    idkinngaku.text = [moneyArray objectAtIndex:indexPath.row];
//    cell.textLabel.text =[dataArray objectAtIndex:indexPath.row];
//    if ([cell.textLabel.text length] >25) {
//        cell.textLabel.text = [NSString stringWithFormat:@"%@...", [cell.textLabel.text substringToIndex:12]];
//    }
//    
//    cell.detailTextLabel.text=[NSString stringWithFormat:@"%@円",[moneyArray objectAtIndex:indexPath.row]];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    self.menuName = [dataArray objectAtIndex:indexPath.row];
    DescriptionViewController *descriptionVC = [self.storyboard instantiateViewControllerWithIdentifier:@"d"];
    descriptionVC.menuName = _menuName;
    [self.navigationController pushViewController:descriptionVC animated:YES];
}

-(IBAction)goBack:(UIStoryboardSegue*)sender
{
    
}



@end
