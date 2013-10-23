//
//  InstagramIshIosSecondViewController.m
//  instagram_ish_ios
//
//  Created by John Figueiredo on 10/8/13.
//
//

#import "InstagramIshIosSecondViewController.h"

@interface InstagramIshIosSecondViewController ()

@end

@implementation InstagramIshIosSecondViewController

@synthesize responseData;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    
    NSLog(@"results: %@", res);
    
//    for(id key in res) {
//        id value = [res objectForKey:key];
//        
//        NSString *keyAsString = (NSString *)key;
//        NSString *valueAsString = (NSString *)value;
//        
//        if (keyAsString]) {
//            NSLog(@"key: %@", keyAsString);
//            NSLog(@"value: %@", valueAsString); }
//        else {
//            NSLog(@"Hello World");
//            }
//        }
//    }
    
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

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

@end
