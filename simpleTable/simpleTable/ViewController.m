//
//  ViewController.m
//  simpleTable
//
//  Created by ilabadmin on 7/14/16.
//  Copyright (c) 2016 strathmore. All rights reserved.
//

#import "ViewController.h"
#import "Languages.h"

@interface ViewController ()

@end
//instance variable for holding the table data.
@implementation ViewController
{
    NSArray *languages;
}
//initialize an array with a list of recipes.
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Initialize table data
    Languages *lang1 = [Languages new];
    lang1.name= @"ios";
    lang1.description= @"ios";
    lang1.image= @"ios.jpg.png";
    
    
   Languages *lang2 = [Languages new];
    lang2.name= @"Java";
    lang2.description= @"ios";
    lang2.image= @"java.jpg";
    
    Languages *lang3 = [Languages new];
    lang3.name= @"Python";
    lang3.description= @"ios";
    lang3.image= @"python.jpg";
    
    Languages *lang4 = [Languages new];
    lang4.name= @"GO";
    lang4.description= @"ios";
    lang4.image= @"go.jpg";
    
    languages = [NSArray arrayWithObjects:lang1,lang2,lang3,lang4, nil];
}
//inform the table view how many rows are in the section.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [languages count];
}
//cellForRowAtIndexPath called every time when a table row is displayed
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleTableIdentifier];
    }
    
    Languages * lang = ((   Languages  *)  languages [indexPath.row]);
    
    cell.textLabel.text = lang.name;
    [cell.detailTextLabel setText:lang.description];
    cell.imageView.image = [UIImage imageNamed:lang.image];
    return cell;
}

@end
