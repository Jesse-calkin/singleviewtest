//
//  UIViewController+testToast.m
//  singleviewtest
//
//  Created by jesse calkin on 1/15/14.
//  Copyright (c) 2014 jesse calkin. All rights reserved.
//
//- presentViewController:animated:completion:
//
//  UINavigationController -
//– pushViewController:animated:
//– popViewControllerAnimated:
//– popToRootViewControllerAnimated:
//– popToViewController:animated:


#import "UIViewController+testToast.h"
#import <objc/runtime.h>

@implementation UIViewController (testToast)

-(void) swiz_viewDidAppear:(BOOL)animated
{
    NSLog(@"SWIZDIZZLE!!!!!!!!!!!!!!");
    animated = NO;
}

-(void) swiz_presentViewController:(UIViewController *)viewControllerToPresent animated:(BOOL)flag completion:(void (^)(void))completion
{
//    flag = NO;
    [self swiz_presentViewController:viewControllerToPresent animated:NO completion:completion];
    NSLog(@"Swiz_presentViewController");
}

+(void) load
{
    Method original, swizzled;
    
    original = class_getInstanceMethod(self, @selector(viewDidAppear:));
    swizzled = class_getInstanceMethod(self, @selector(swiz_viewDidAppear:));
    
    method_exchangeImplementations(original, swizzled);
    
    original = class_getInstanceMethod(self, @selector(presentViewController:animated:completion:));
    swizzled = class_getInstanceMethod(self, @selector(swiz_presentViewController:animated:completion:));
    
    method_exchangeImplementations(original, swizzled);
}

@end