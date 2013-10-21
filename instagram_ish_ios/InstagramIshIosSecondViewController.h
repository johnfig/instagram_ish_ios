//
//  InstagramIshIosSecondViewController.h
//  instagram_ish_ios
//
//  Created by John Figueiredo on 10/8/13.
//
//

#import <UIKit/UIKit.h>

@interface InstagramIshIosSecondViewController : UIViewController
@property(strong, nonatomic) IBOutlet UIButton *getGalleryRequest;
@property (strong, nonatomic) NSMutableData *responseData;
@property (strong, nonatomic) IBOutlet UIImageView *singleImageView;
@end
