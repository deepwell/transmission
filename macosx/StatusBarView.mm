// This file Copyright © 2006-2022 Transmission authors and contributors.
// It may be used under the MIT (SPDX: MIT) license.
// License text can be found in the licenses/ folder.

#import "StatusBarView.h"
#import "NSApplicationAdditions.h"

@interface StatusBarView ()

- (void)reload;

@end

@implementation StatusBarView

- (BOOL)mouseDownCanMoveWindow
{
    return YES;
}

- (BOOL)isOpaque
{
    return YES;
}

- (void)drawRect:(NSRect)rect
{
    [NSColor.windowBackgroundColor setFill];
    NSRectFill(rect);

    NSRect const lineBorderRect = NSMakeRect(NSMinX(rect), 0.0, NSWidth(rect), 1.0);
    if (NSIntersectsRect(lineBorderRect, rect))
    {
        [NSColor.gridColor setFill];
        NSRectFill(lineBorderRect);
    }
}

- (void)reload
{
    self.needsDisplay = YES;
}

@end
