//
//  ViewController.m
//  UIImageViewAnimation
//
//  Created by Karma on 16/5/19.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *mainImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//隐藏状态栏
-(BOOL)prefersStatusBarHidden{
    return  YES;
}
- (IBAction)clickStomachBtn:(id)sender {
    NSMutableArray *tempArray=[NSMutableArray array];
    for (int i=0; i<34; i++) {
        NSString *imageFile=[NSString stringWithFormat:@"stomach_%02d.jpg",i];
        NSString *filePath=[[NSBundle mainBundle] pathForResource:imageFile ofType:nil];
        UIImage *image=[UIImage imageWithContentsOfFile:filePath];
        [tempArray addObject:image];
    }
    self.mainImageView.animationImages=tempArray;
    self.mainImageView.animationDuration=3;
    self.mainImageView.animationRepeatCount=2;
    [self.mainImageView startAnimating];
    
}

@end
