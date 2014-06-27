//
//  sukirukennsaku.m
//  がんしみゅ
//
//  Created by 陸 野口 on 2013/12/24.
//  Copyright (c) 2013年 陸 野口. All rights reserved.
//

#import "sukirukennsaku.h"
#import "DetailViewController.h"
#import "setumei.h"
#import "DetailTableViewController.h"


@implementation sukirukennsaku

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *nameText = [tableView cellForRowAtIndexPath:indexPath].textLabel.text;
    DetailTableViewController *detailVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailTableViewController"];
    detailVC.nameText = nameText;
    [self presentViewController:detailVC animated:YES completion:nil];
}


 




@end

