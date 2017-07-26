//
//  ViewController.m
//  sb
//
//  Created by gab on 17/7/20.
//  Copyright © 2017年 gab. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    position属性是决定子layer在父layer上的位置，默认为（0，0）。其次，anchorPoint属性是决定子layer上的哪个点会在position所指定的位置。(也就是说子图层上锚点始终会和其相对于父图层position重合)
    CALayer *lay=[CALayer layer];
    lay.bounds=CGRectMake(0, 0, 100, 100);
    lay.position=CGPointMake(0, 0);
    lay.anchorPoint=CGPointMake(0, 0.5);
    lay.backgroundColor=[UIColor redColor].CGColor;
    [self.view .layer addSublayer:lay];
    // Do any additional setup after loading the view, typically from a nib.
   
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 100;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];

    return cell;

}
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        
        UICollectionReusableView *view=[collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"re" forIndexPath:indexPath];
        return view;
    }

    return nil;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
