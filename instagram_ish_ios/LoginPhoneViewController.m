//
//  LoginPhoneViewController.m
//  instagram_ish_ios
//
//  Created by John Figueiredo on 10/24/13.
//
//

#import "LoginPhoneViewController.h"
#import "SVProgressHUD.h"

@interface LoginPhoneViewController ()
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@end

@implementation LoginPhoneViewController

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
    self.navigationItem.titleView.backgroundColor = [UIColor whiteColor];
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (IBAction)loginValidation:(id)sender {
    [SVProgressHUD showSuccessWithStatus:@"Success!"];
    [self performSegueWithIdentifier:@"moveToHomeScreen" sender:self];
}
@end
