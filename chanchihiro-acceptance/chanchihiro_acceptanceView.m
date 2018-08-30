//
//  chanchihiro_acceptanceView.m
//  chanchihiro-acceptance
//
//  Created by noguchi-chihiro on 2018/08/30.
//  Copyright © 2018年 noguchi-chihiro. All rights reserved.
//

#import "chanchihiro_acceptanceView.h"

@implementation chanchihiro_acceptanceView

- (instancetype)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        [self setAnimationTimeInterval:1/30.0];
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
}

- (void)animateOneFrame
{
    return;
}

- (BOOL)hasConfigureSheet
{
    return NO;
}

- (NSWindow*)configureSheet
{
    return nil;
}

@end
