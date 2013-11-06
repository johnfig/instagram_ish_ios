//
//  InstagramIshIosSecondViewController.m
//  instagram_ish_ios
//
//  Created by John Figueiredo on 10/8/13.
//
//

#import "InstagramIshIosSecondViewController.h"

@interface InstagramIshIosSecondViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet UICollectionViewCell *collectionViewCell;
@property (weak, nonatomic) IBOutlet UIImageView *singleImage;
@end

@implementation InstagramIshIosSecondViewController

@synthesize responseData;
@synthesize singleImage;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"collectionViewCell"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)getGalleryRequest:(id)sender {
    NSLog(@"viewdidload");
    self.responseData = [NSMutableData data];
    NSURLRequest *request = [NSURLRequest requestWithURL:
                             [NSURL URLWithString:@"https://instagramish.herokuapp.com/photos_api.json"]];
    [[NSURLConnection alloc] initWithRequest:request delegate:self];
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    NSLog(@"didReceiveResponse");
    [self.responseData setLength:0];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [self.responseData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"connectionDidFinishLoading");
    NSLog(@"Succeeded! Received %lu bytes of data",(unsigned long)[self.responseData length]);
    
    // convert to JSON
    NSError *myError = nil;
    NSDictionary *res = [NSJSONSerialization JSONObjectWithData:self.responseData options:NSJSONReadingMutableLeaves error:&myError];
    
    NSLog(@"Photo Hash: %@", res);
    
    for (id key in res) {
//        This is where collectionViewImage will be set
        NSLog(@"name: %@, photo: %@", key[@"name"], key[@"photo"]);
        if (singleImage) {
            singleImage.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:key[@"photo"]]]];
         };
    };
    
    
//    __block NSUInteger selectedIndex = 0;
//    [res[0] enumerateObjectsUsingBlock:^(NSDictionary *res, NSUInteger idx, BOOL *stop) {
//        if ([res isEqualToString:@"photo"]) {
//            NSLog(@"%@: %@", res, obj);
//        }
//
//    }];

//    // show all values
//    for(id key in res) {
//        
//        id value = [res objectForKey:key];
//        
//        NSString *keyAsString = (NSString *)key;
//        NSString *valueAsString = (NSString *)value;
//        
//        NSLog(@"key: %@", keyAsString);
//        NSLog(@"value: %@", valueAsString);
//    }
//
//    // extract specific value...
//    NSArray *results = [res objectForKey:@"results"];
//    
//    for (NSDictionary *result in results) {
//        NSString *icon = [result objectForKey:@"icon"];
//        NSLog(@"icon: %@", icon);
//    }
}

@end
