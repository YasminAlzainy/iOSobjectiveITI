//
//  MyTableViewController.m
//  tableView
//
//  Created by JETS Mobile Lab - 8 on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "MyTableViewController.h"
#import "Colleague.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController
{
    NSMutableArray * males;
    NSMutableArray * females;
    
    Colleague * colleague ;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    males = [NSMutableArray new];
    females = [NSMutableArray new];
    
    colleague = [Colleague alloc];
    [colleague initName:@"Yasmin" andAdress:@"Egypt" andEmail:@"yasmin@yahoo.com" andPhone:0000 andAge:00];
    [females addObject:colleague];
    colleague = [Colleague alloc];
    
    [colleague initName:@"Sara" andAdress:@"Egypt" andEmail:@"sara@yahoo.com" andPhone:8884 andAge:44];
    [females addObject:colleague];
    
    colleague = [Colleague alloc];
    [colleague initName:@"Ahmed" andAdress:@"KSA" andEmail:@"Ahmed@hotmail.com" andPhone:999 andAge:9];
    [males addObject:colleague];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger NumOfRows;
    switch (section) {
        case 0:
            NumOfRows = [males count];
            break;
        case 1:
            NumOfRows = [females count];
            break;
        default:
            NumOfRows = 0;
            break;
    }
    return NumOfRows;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"
                                                            forIndexPath:indexPath];
    
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = [[males objectAtIndex:indexPath.row] name];
            cell.detailTextLabel.text = @"Details"; // will not show if basic
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            break;
        case 1:
            cell.textLabel.text = [[females objectAtIndex:indexPath.row] name];
            cell.detailTextLabel.text = @"Details"; // will not show if basic
            cell.accessoryType = UITableViewCellAccessoryDetailButton;
            break;
        default:
            break;
    }
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return @"Males";
            break;
        case 1:
            return @"Females";
            break;
        default:
            return @"default";
            break;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.section) {
        case 0:
            printf("Males \n");
            break;
        case 1:
            printf("Females: %s \n" , [[females objectAtIndex:indexPath.row] UTF8String] );
            break;
        default:
            break;
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        switch (indexPath.section) {
            case 0:
                [males removeObjectAtIndex:indexPath.row];
                break;
            case 1:
                [females removeObjectAtIndex:indexPath.row];
                break;
            default:
                break;
        }
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    [segue destinationViewController];
}


@end
