//
//  TableViewController.m
//  SimpleTableProject
//
//  Created by Anyssa Buchanan on 2/20/14.
//  Copyright (c) 2014 Anyssa Buchanan. All rights reserved.
//

#import "TableViewController.h"
#import "CustomCell.h"


@interface TableViewController ()

@end

@implementation TableViewController
{
    NSArray *tableData;
    NSArray *thumbnails;
    NSArray *prepTime;

}
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
    
    
    // Find out the path of recipes.plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"recipes" ofType:@"plist"];
    
    // Load the file content and read the data into arrays
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    tableData = [dict objectForKey:@"RecipeName"];
    thumbnails = [dict objectForKey:@"Thumbnail"];
    prepTime = [dict objectForKey:@"PrepTime"];
    
    /*recipes = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brulee", @"White Chocolate Donut", @"Starbucks Coffee", @"vegetable curry", @"Instant noodle with egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];*/
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
    return [tableData count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 30.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *TableIdentifier = @"CustomCell";
    
    CustomCell *cell = (CustomCell*)[tableView dequeueReusableCellWithIdentifier:TableIdentifier];
    
    if (cell == nil) {
        cell = [[CustomCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:TableIdentifier];
//        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
//        cell = [nib objectAtIndex:0];
    }
//    cell.backgroundColor = [UIColor blackColor];
    cell.nameLabel.text = @"HELLO";

//    cell.nameLabel.text = [tableData objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    cell.prepTimeLabel.text = [prepTime objectAtIndex:indexPath.row];
    

    //cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    /*switch (indexPath.row) {
        case 0:
            cell.imageView.image = [UIImage imageNamed:@"eggs_benedict.jpg"];

            break;
        case 1:
            cell.imageView.image = [UIImage imageNamed:@"mushroom-risotto.jpg"];
            
            break;
        case 2:
            cell.imageView.image =[UIImage imageNamed:@"fullbreakfast.jpg" ];
                                   
            break;
        case 3:
            cell.imageView.image =[UIImage imageNamed:@"hamburger.jpg" ];
            
            break;
        case 4:
            cell.imageView.image =[UIImage imageNamed:@"hamandegg.jpg" ];
            
            break;
        case 5:
            cell.imageView.image =[UIImage imageNamed:@"creme_brelee.jpg" ];
            
            break;
        case 6:
            cell.imageView.image =[UIImage imageNamed:@"whitechocodo.jpg" ];
            
            break;
        case 7:
            cell.imageView.image =[UIImage imageNamed:@"starbucks.jpg" ];
            
            break;
        case 8:
            cell.imageView.image =[UIImage imageNamed:@"vegcurry.jpg" ];
            
            break;
        case 9:
            cell.imageView.image =[UIImage imageNamed:@"noodle_egg.jpg" ];
            
            break;
        case 10:
            cell.imageView.image =[UIImage imageNamed:@"noodle_bbqpork.jpg" ];
            
            break;
        case 11:
            cell.imageView.image =[UIImage imageNamed:@"noodle_bbqpork.jpg" ];
            
            break;
        default:
            break;*/
    
    return cell;
    
}
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

/*- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */
@end
