//
//  ViewController.m
//  CollViewBugOrNot
//
//

#import "ACollectionViewController.h"
#import "ACollectionViewCell.h"

@interface ACollectionViewController ()

@end

@implementation ACollectionViewController{
    int number;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;

    
//    self.collectionView.contentInset = UIEdgeInsetsMake(20.0f, 0.0f, 0.0f, 0.0f);
    number = 0;
}

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section
{
    return 3;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ACollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"cellid" forIndexPath:indexPath];
    
//    cell.cellSize = CGSizeMake(100, 100);; // [self getSize];
    
    return cell;
}

// CollectionView - Size
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    ACollectionViewCell *cell = (ACollectionViewCell*)[self.collectionView cellForItemAtIndexPath:indexPath];
    
    CGSize cellSize = CGSizeZero;
//    if (!CGSizeEqualToSize(cell.cellSize, CGSizeZero)){
    
    if (cell!=nil){
        cellSize = cell.cellSize;
    }else{
        cellSize = CGSizeMake(100, 100); //[self getSize];
    }
    
    return CGSizeMake(100, 100);
}

- (CGSize)getSize{
    return CGSizeMake(100, 100);
}

- (void)collectionView:(UICollectionView *)collectionView
   moveItemAtIndexPath:(NSIndexPath *)sourceIndexPath
           toIndexPath:(NSIndexPath *)destinationIndexPath{

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
