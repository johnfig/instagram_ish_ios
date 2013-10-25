//
//  LoginPhoneViewController.m
//  instagram_ish_ios
//
//  Created by John Figueiredo on 10/24/13.
//
//

#import "LoginPhoneViewController.h"

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
}

- (IBAction)loginValidation:(id)sender {
    NSLog(@"Login Hello World");
}
@end
