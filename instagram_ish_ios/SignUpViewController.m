//
//  SignUpViewController.m
//  instagram_ish_ios
//
//  Created by John Figueiredo on 10/24/13.
//
//

#import "SignUpViewController.h"

@interface SignUpViewController ()
@property (strong, nonatomic) IBOutlet UIButton *signUpButton;
@property (strong, nonatomic) IBOutlet UIButton *loginButton;
@end

@implementation SignUpViewController


- (IBAction) unwindToHomeScreen:(UIStoryboardSegue*)segue { }

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}
@end
