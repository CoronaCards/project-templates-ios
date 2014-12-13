//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "ViewController.h"

#import "CoronaCards/CoronaCards.h"

@interface ViewController ()

@property (nonatomic, strong) CoronaViewController *coronaController;

@end

@implementation ViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

	_coronaController = [[[CoronaViewController alloc] init] autorelease];
	[self addChildViewController:_coronaController];

	UIView *parent = self.view;
	CoronaView *coronaView = (CoronaView *)_coronaController.view;
	
	// Resize and center CoronaView
	CGRect rect = parent.frame;
	rect.size.width *= 0.5;
	rect.size.height *= 0.5;
	coronaView.frame = rect; // Half the size of the parent
	coronaView.center = parent.center; // Position at center

	[parent addSubview:coronaView];

	[coronaView run];
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
