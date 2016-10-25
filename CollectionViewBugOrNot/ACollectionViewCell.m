//
//  ACellCollectionViewCell.m
//  CollViewBugOrNot
//
//  Created by Christian Gregersen on 25/10/16.
//  Copyright © 2016 Test A/S. All rights reserved.
//

#import "ACollectionViewCell.h"

@implementation ACollectionViewCell

//@synthesize cellSize=_cellSize;

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        // change to our custom selected background view
        UIView *bcgView = [[UIView alloc] initWithFrame:CGRectZero];
        bcgView.backgroundColor = [UIColor darkGrayColor];
        self.selectedBackgroundView = bcgView;
    }
    return self;
}

@end
