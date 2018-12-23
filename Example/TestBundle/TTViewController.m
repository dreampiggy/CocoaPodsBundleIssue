//
//  TTViewController.m
//  TestBundle
//
//  Created by lizhuoli1126@126.com on 12/23/2018.
//  Copyright (c) 2018 lizhuoli1126@126.com. All rights reserved.
//

#import "TTViewController.h"
#import <TestBundle/TestLibrary.h>

@interface TTViewController ()

@end

@implementation TTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *bundlePath = [[NSBundle mainBundle].resourcePath stringByAppendingPathComponent:@"TestBundleResource.bundle"];
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    NSParameterAssert(bundle);
    // Bundle exist
    
    NSString *bundleIdentifier = bundle.bundleIdentifier;
//    NSParameterAssert(bundleIdentifier.length > 0);
    // But however, bundle identifier is missing !
    
    UIImage *image = [UIImage imageNamed:@"loading" inBundle:bundle compatibleWithTraitCollection:nil];
    // when bundle identifier missing, even the `Assets.car` exist, the image still load failed !
//    NSParameterAssert(image);
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
