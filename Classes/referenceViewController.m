//
//  referenceViewController.m
//  pocketSolver
//
//  Created by Aravind Rao on 11-03-29.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "referenceViewController.h"
#import "templateDetailViewController.h"
#import "generalReferenceViewController.h"
 


@implementation referenceViewController

@synthesize equationTemplates;
@synthesize generalReferenceArray;
@synthesize tableView = _tableView; 
@synthesize contentView = _contentView;
@synthesize adBannerView = _adBannerView;
@synthesize adBannerViewIsVisible = _adBannerViewIsVisible; 



#pragma mark -
#pragma mark Initialization

/*
- (id)initWithStyle:(UITableViewStyle)style {
    // Override initWithStyle: if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/





#pragma mark -
#pragma mark View lifecycle



- (void)viewDidLoad {
    [super viewDidLoad];
		[self createAdBannerView];
	NSString *path = [[NSBundle mainBundle] pathForResource:@"generalReference" ofType:@"plist"];
	NSMutableArray* tmpArray = [[NSMutableArray alloc] initWithContentsOfFile:path];
	self.generalReferenceArray = tmpArray; 
	[tmpArray release];
	
	
    path = [[NSBundle mainBundle] pathForResource:@"templatesReference" ofType:@"plist"];
    tmpArray = [[NSMutableArray alloc] initWithContentsOfFile:path];
	self.equationTemplates = tmpArray; 
	[tmpArray release];
	
	UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil];
	self.navigationItem.backBarButtonItem = backButton;
	[backButton release];
	
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
	[_tableView reloadData];
	[self fixupAdView:[UIDevice currentDevice].orientation];
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    [self fixupAdView:toInterfaceOrientation];
}

/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}
*/
/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 2;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    
	if(section == 0) 
	{
		return [equationTemplates count];
	}
	if(section == 1) 
	{
		return [generalReferenceArray count];
	}
	return 1;

}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    if(indexPath.section == 0){
		
		cell.textLabel.text = [[self.equationTemplates objectAtIndex:indexPath.row]objectForKey:@"Name"];
		cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
		cell.detailTextLabel.text = [[self.equationTemplates objectAtIndex:indexPath.row]objectForKey:@"Desc"];
	}
	
	else
	{   cell.textLabel.text = [[self.generalReferenceArray objectAtIndex:indexPath.row]objectForKey:@"Name"];
		cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
		cell.detailTextLabel.text = [[self.generalReferenceArray objectAtIndex:indexPath.row]objectForKey:@"Contents"];
	}
    return cell;
	
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	
	if(section == 0)
		return @"Equation Templates Reference";
	else
		return @"General Reference";
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source.
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }   
}
*/


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


#pragma mark -
#pragma mark Table view delegate


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	if(indexPath.section == 0){
    templateDetailViewController *templateDetailView = [[templateDetailViewController alloc] initWithNibName:@"templateDetailViewController" bundle:nil];
	templateDetailView.temp = [self.equationTemplates objectAtIndex:indexPath.row];
	[self.navigationController pushViewController:templateDetailView animated:YES];
	[templateDetailView release];
	}
	else
	{
		generalReferenceViewController *generalReference = [[generalReferenceViewController alloc] initWithNibName:@"generalReferenceViewController" bundle:nil];
		generalReference.references = [self.generalReferenceArray objectAtIndex:indexPath.row];
		[self.navigationController pushViewController:generalReference animated:YES];
	[generalReference release];
	}

}

#pragma mark ADBannerViewDelegate

- (void)bannerViewDidLoadAd:(ADBannerView *)banner {
    if (!_adBannerViewIsVisible) {                
        _adBannerViewIsVisible = YES;
        [self fixupAdView:[UIDevice currentDevice].orientation];
    }
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    if (_adBannerViewIsVisible)
    {        
        _adBannerViewIsVisible = NO; 
        [self fixupAdView:[UIDevice currentDevice].orientation];
    }
}

#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
	[equationTemplates release];
	[generalReferenceArray release];
	self.contentView = nil;
	self.adBannerView = nil;
}


@end

