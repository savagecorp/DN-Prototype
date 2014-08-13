//
//  ViewController.m
//  DN Prototype
//
//  Created by Brett Mascavage on 7/29/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIView *dialogView;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;
- (IBAction)loginButtonDidPress:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIImageView *emailImageView;
@property (weak, nonatomic) IBOutlet UIImageView *passwordImageView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setNeedsStatusBarAppearanceUpdate];
    
    self.emailTextField.delegate = self;
    self.passwordTextField.delegate = self;
    
}


-(UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

// Set up text field deligate stuff
-(void) textFieldDidBeginEditing:(UITextField *)textField {
    // Do something when textfield is focused.
    NSLog(@"%@" , textField);
    
    // This is hardCoding position of textFields using frame.origin.y
    //if (textField.frame.origin.y == 108) {
    //    NSLog(@"EMAIL");
    //}
    
    //if (textField.frame.origin.y == 162) {
    //    NSLog(@"Password!");
    //}
    
    //A Better way is to
    if ([textField isEqual:self.emailTextField]) {
        [self.emailTextField setBackground:[UIImage imageNamed:@"input-outline-active"]];
        self.emailImageView.image = [UIImage imageNamed:@"icon-mail-active"];
    } else {
        [self.emailTextField setBackground:[UIImage imageNamed:@"input-outline"]];
        self.emailImageView.image = [UIImage imageNamed:@"icon-mail"];
    }
    
    
    if ([textField isEqual:self.passwordTextField]) {
        [self.passwordTextField setBackground:[UIImage imageNamed:@"input-outline-active"]];
        self.passwordImageView.image = [UIImage imageNamed:@"icon-password-active"];
    } else {
        [self.passwordTextField setBackground:[UIImage imageNamed:@"input-outline"]];
        self.passwordImageView.image = [UIImage imageNamed:@"icon-password"];
    }
}

-(void) textFieldDidEndEditing:(UITextField *)textField {
    if ([textField isEqual:self.emailTextField]) {
        [self.emailTextField setBackground:[UIImage imageNamed:@"input-outline"]];
        self.emailImageView.image = [UIImage imageNamed:@"icon-mail"];
    }
    
    
    if ([textField isEqual:self.passwordTextField]) {
        [self.passwordTextField setBackground:[UIImage imageNamed:@"input-outline"]];
        self.passwordImageView.image = [UIImage imageNamed:@"icon-password"];
    }

}



- (IBAction)loginButtonDidPress:(id)sender {
    // Animate Login Button
    [UIView animateWithDuration:0.1 animations:^{
        self.loginButton.transform = CGAffineTransformMakeTranslation(10, 0);
    } completion:^(BOOL finished) {
        // Step 2
        [UIView animateWithDuration:0.1 animations:^{
            self.loginButton.transform = CGAffineTransformMakeTranslation(-10, 0);
        } completion:^(BOOL finished) {
            // Step 3
            [UIView animateWithDuration:0.1 animations:^{
                self.loginButton.transform = CGAffineTransformMakeTranslation(0, 0);
            }];
        }];
    }];
    
    // animateWithDuration with Damping
    [UIView animateWithDuration:0.7 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:0 options:0 animations:^{
        //change size of dialog view
        if (self.dialogView.frame.origin.y == 144) {
            [self.dialogView setFrame:CGRectMake(self.dialogView.frame.origin.x, self.dialogView.frame.origin.y-60, self.dialogView.frame.size.width, 320)];
        }
    } completion:^(BOOL finished) { }];
    
}
@end
