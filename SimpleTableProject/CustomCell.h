//
//  SimpleTable.h
//  SimpleTableProject
//
//  Created by Anyssa Buchanan on 2/25/14.
//  Copyright (c) 2014 Anyssa Buchanan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell

@property (nonatomic) UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *prepTimeLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end
