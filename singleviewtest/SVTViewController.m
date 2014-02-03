//
//  SVTViewController.m
//  singleviewtest
//
//  Created by jesse calkin on 10/2/13.
//  Copyright (c) 2013 jesse calkin. All rights reserved.
//

#import "SVTViewController.h"

@interface SVTViewController ()
@property (weak, nonatomic) IBOutlet UIView *topView;
@property (strong, nonatomic) IBOutlet UIRotationGestureRecognizer *recognizer;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation SVTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Call your test method when the "TAP" button is tapped
- (IBAction)buttonTapped:(id)sender {
    [self testMethod];
}

// Test your stuff here maybe
- (void)testMethod {
    [self toastWithString:[NSString stringWithFormat:@"%i", 1+1]];
}

-(void) toastWithString:(NSString*)toast
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:toast
                                       message:nil
                                      delegate:self
                             cancelButtonTitle:nil
                             otherButtonTitles:nil];
    
    [alert show];
    
//    This automatically dismisses the toast after 2 seconds.
//    If you want the normal UIAlertView behavior of persisting
//    until pressing cancel, comment this out and add a title
//    string to the above "cancelButtonTitle:"
    [self performSelector:@selector(dismissAlertView:)
               withObject:alert
               afterDelay:2];

}

-(void)dismissAlertView:(UIAlertView *)alertView{
    [alertView dismissWithClickedButtonIndex:0
                                    animated:YES];
}

@end
