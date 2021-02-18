//
//  MTViewController.m
//  MTMWPhotoBrowser
//
//  Created by 1055263815@qq.com on 02/18/2021.
//  Copyright (c) 2021 1055263815@qq.com. All rights reserved.
//

#import "MTViewController.h"
#import <MTMWPhotoBrowser/MWPhotoBrowser.h>
#import <SDWebImage/SDWebImage.h>

@interface MTViewController ()<MWPhotoBrowserDelegate>

@property(nonatomic, copy) NSArray<NSString *> *imageUrlArray;
@property(nonatomic, strong) UIButton *clickButton;

@property(nonatomic, strong)SDAnimatedImageView *animationView;

@end

@implementation MTViewController

- (void)viewDidLoad
{
    self.imageUrlArray = @[
//        @"https://img.maitao.com/135editor/scrawl/img/201215110246197.jpg?watermark/1/image/aHR0cDovL2ltZy5tYWl0YW8uY29tL3N5MS5wbmc=/dissolve/72/gravity/SouthEast/dx/10/dy/10",
        @"https://img.maitao.com/135editor/catch/img/https135editorcdnbceboscomfilesusers9359350430202011CkYvFZaz_fpQGgif.gif?watermark/1/image/aHR0cDovL2ltZy5tYWl0YW8uY29tL3N5MS5wbmc=/dissolve/72/gravity/SouthEast/dx/10/dy/10&v=1606896985622"
//        @"https://img.maitao.com/135editor/single/201215102345559.jpg?watermark/1/image/aHR0cDovL2ltZy5tYWl0YW8uY29tL3N5MS5wbmc=/dissolve/72/gravity/SouthEast/dx/10/dy/10",
//        @"https://img.maitao.com/135editor/single/201126164729852.png?watermark/1/image/aHR0cDovL2ltZy5tYWl0YW8uY29tL3N5MS5wbmc=/dissolve/72/gravity/SouthEast/dx/10/dy/10",
    ];
    
    
    self.animationView = [[SDAnimatedImageView alloc]initWithFrame:CGRectMake(100, 200, 200, 200)];
    [self.view addSubview:self.animationView];
    [self.animationView sd_setImageWithURL:[NSURL URLWithString:@"https://img.maitao.com/135editor/catch/img/https135editorcdnbceboscomfilesusers9359350430202011CkYvFZaz_fpQGgif.gif?watermark/1/image/aHR0cDovL2ltZy5tYWl0YW8uY29tL3N5MS5wbmc=/dissolve/72/gravity/SouthEast/dx/10/dy/10&v=1606896985622"] placeholderImage:nil];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.clickButton = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 40)];
    [self.view addSubview:self.clickButton];
    [self.clickButton addTarget:self action:@selector(showBowser) forControlEvents:UIControlEventTouchUpInside];
    self.clickButton.backgroundColor = [UIColor purpleColor];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)showBowser
{
    MWPhotoBrowser *browser =
        [[MWPhotoBrowser alloc] initWithDelegate:self];
    browser.enableGrid = YES;
    browser.startOnGrid = YES;
    browser.displayActionButton = YES;
    browser.displaySelectionButtons = NO;
    browser.currentPhotoIndex = 0;

    [self presentViewController:browser animated:YES completion:nil];
    // Dispose of any resources that can be recreated.
}


- (NSUInteger)numberOfPhotosInPhotoBrowser:(MWPhotoBrowser *)photoBrowser {
    return 1;
}
- (id <MWPhoto>)photoBrowser:(MWPhotoBrowser *)photoBrowser photoAtIndex:(NSUInteger)index{
    return [MWPhoto photoWithURL:[NSURL URLWithString:self.imageUrlArray[index]]];
}

@end
