//
//  AddViewController.h
//  simpleTable
//
//  Created by ilabadmin on 7/15/16.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddViewController : UIViewController
@property (weak,nonatomic) IBOutlet UITextField *txtName;
@property (weak,nonatomic) IBOutlet UITextField *txtDescription;
@property (weak,nonatomic) IBOutlet UITextField *txtImage;

-(IBAction)addNewLanguage: (id)sender;

@end
