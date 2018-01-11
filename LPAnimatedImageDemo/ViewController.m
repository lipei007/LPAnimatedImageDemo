//
//  ViewController.m
//  LPAnimatedImageDemo
//
//  Created by Jack on 2018/1/11.
//  Copyright © 2018年 Jack. All rights reserved.
//

#import "ViewController.h"
#import "LPAnimatedImageView.h"
#import "LPAnimateImage.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet LPAnimatedImageView *aiv;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"tutu.gif" ofType:nil];
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"Foo.jpg" ofType:nil];
    
    NSData *data = [NSData dataWithContentsOfFile:path];
    LPAnimateImage *ai = [[LPAnimateImage alloc] initWithData:data];
    self.aiv.animatedImage = ai;
//    self.aiv.isPlaying = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
