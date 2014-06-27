//
//  BaseTableViewController.m
//  がんしみゅ
//
//  Created by 陸 野口 on 2014/05/04.
//  Copyright (c) 2014年 陸 野口. All rights reserved.
//

#import "BaseTableViewController.h"
#import "DetailViewController.h"

@implementation BaseTableViewController
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *nameText = [tableView cellForRowAtIndexPath:indexPath].textLabel.text;
    
    DetailViewController *detailVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailTableViewController"];
    
    detailVC.nameText = nameText;
    
    [self.navigationController pushViewController:detailVC animated:YES];
    
    // NavigationBarの色を変更
    
    self.navigationController.navigationBar.tintColor = [UIColor blueColor];
    
}





@end
