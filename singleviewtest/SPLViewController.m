//
//  SPLViewController.m
//  singleviewtest
//
//  Created by jesse calkin on 10/2/13.
//  Copyright (c) 2013 jesse calkin. All rights reserved.
//

#import "SPLViewController.h"

@interface SPLViewController ()
@property (weak, nonatomic) IBOutlet UIView *topView;
@property (strong, nonatomic) IBOutlet UIRotationGestureRecognizer *recognizer;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation SPLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapped:(id)sender {
//    Put whatever you want to test when the button is tapped here.
}

-(void) toastWithString:(NSString*)toast
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:toast
                                       message:nil
                                      delegate:self
                             cancelButtonTitle:nil
                             otherButtonTitles:nil];
    
    [alert show];
    [self performSelector:@selector(dismissAlertView:)
               withObject:alert
               afterDelay:2];

}

-(void)dismissAlertView:(UIAlertView *)alertView{
    [alertView dismissWithClickedButtonIndex:0
                                    animated:YES];
}

@end
