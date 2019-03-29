//
//  NDMsgGiftCell.m
//  
//
//  Created by ljq on 2018/10/8.
//  Copyright © 2018年 . All rights reserved.
//

#import "NDMsgGiftCell.h"


@interface NDMsgGiftCell ()


@end

@implementation NDMsgGiftCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
    }
    return self;
}

- (void)msgAttributeTapAction {
    if (self.delegate && [self.delegate respondsToSelector:@selector(userClick:)]) {
        [self.delegate userClick:self.msgModel.user];
    }
}

- (void)setMsgModel:(NDMsgModel *)msgModel {
    [super setMsgModel:msgModel];
    //[self setNeedsLayout];
    
    
    self.msgLabel.attributedText = msgModel.attributeModel.msgAttribText;
    self.bgLb.backgroundColor = msgModel.attributeModel.bgColor;
}

@end
