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
    NSArray *array;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;

    array = @[@1,@2,@3];
    
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
    
    cell.cellSize = [self getSize:indexPath.row];
    return cell;
}

// CollectionView - Size
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    ACollectionViewCell *cell = (ACollectionViewCell*)[self.collectionView cellForItemAtIndexPath:indexPath];
    
    CGSize cellSize = CGSizeZero;
    if (cell!=nil){
        cellSize = cell.cellSize;
    }else{
        cellSize = [self getSize:indexPath.row]; // CGSizeMake(100, 100);
    }
    
    return cellSize;
}

- (CGSize)getSize:(NSInteger) row{

    switch (row) {
        case 0:
            return CGSizeMake(100, 100);
            break;

        case 1:
            return CGSizeMake(200, 100);
            break;

        case 2:
            return CGSizeMake(300, 100);
            break;
            
        default:
            return CGSizeMake(10, 10);
            break;
    }
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
