//
//  SignUpPhoneViewController.m
//  instagram_ish_ios
//
//  Created by John Figueiredo on 10/24/13.
//
//

#import "SignUpPhoneViewController.h"
#import "SVProgressHUD.h"

@interface SignUpPhoneViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@end

@implementation SignUpPhoneViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)signUpValidation:(id)sender {
    [SVProgressHUD showSuccessWithStatus:@"Success!"];
    [self performSegueWithIdentifier:@"moveToHomeScreen" sender:self];
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

@end
