//
//  VjCustomButtons.m
//  CustomButtons
//
//  Created by vijay vir on 2/2/16.
//  Copyright © 2016 divine creator. All rights reserved.
//

#import "VjCustomButtons.h"

@implementation VjCustomButtons

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/



- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self)
    {
        [self addTarget:self action:@selector(didTouchButton) forControlEvents:UIControlEventTouchUpInside];
    }
    
 
    
    return self;
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        [self addTarget:self action:@selector(didTouchButton) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return self;
}


- (void) didTouchButton
{
    CGRect tempRect = self.layer.frame;
    
    tempRect.origin.x -= 2;
    tempRect.origin.y -= 2;
    
    tempRect.size.height += 4;
    tempRect.size.width += 4;
    
    self.layer.frame = tempRect;
    
    [self performSelector:@selector(removeEffect) withObject:nil afterDelay:0.2f];
}


- (void) removeEffect
{
    CGRect tempRect = self.layer.frame;
    
    tempRect.origin.x += 2;
    tempRect.origin.y += 2;
    
    tempRect.size.height -= 4;
    tempRect.size.width -= 4;
    
    self.layer.frame = tempRect;
}
@end
