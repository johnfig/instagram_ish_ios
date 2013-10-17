//
//  InstagramIshIosFirstViewController.h
//  instagram_ish_ios
//
//  Created by John Figueiredo on 10/8/13.
//
//

#import <UIKit/UIKit.h>

@interface InstagramIshIosFirstViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)takePhoto:  (UIButton *)sender;
- (IBAction)selectPhoto:(UIButton *)sender;

@end
