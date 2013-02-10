//
//  One.m
//  pocketSolver
//
//  Created by Aravind Rao on 11-03-31.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Four.h"
#import "fullSolutionViewController.h"


@implementation Four

@synthesize  fA, fB, fC, pA, pB, pC, pD, sA, sB, sC, fButton, slope, xin, yin, sf, pf, sif, v1, v2, v3;
@synthesize contentView = _contentView; 
@synthesize adBannerView = _adBannerView;
@synthesize adBannerViewIsVisible = _adBannerViewIsVisible; 



NSString * fourType = @"LE Graph: General Features";
NSString * fourEqn;
NSString * fourSol;
NSString * tem;

double aV;
double bV;
double cV;
double dV;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"LE Graph Features";
    }
    return self;
}

- (int)getBannerHeight:(UIDeviceOrientation)orientation {
    if (UIInterfaceOrientationIsLandscape(orientation)) {
        return 32;
    } else {
        return 50;
    }
}

- (int)getBannerHeight {
    return [self getBannerHeight:[UIDevice currentDevice].orientation];
}





-(void)viewDidLoad
{
	[super viewDidLoad];
	[self createAdBannerView];
	UIBarButtonItem *viewButton = [[UIBarButtonItem alloc] initWithTitle:@"Steps"
																   style:UIBarButtonItemStyleBordered
																  target:self
																  action:@selector(fourViewSol)];
	self.navigationItem.rightBarButtonItem = viewButton;															  																  																  																  
	[viewButton release];
	
	UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil];
	self.navigationItem.backBarButtonItem = backButton;
	[backButton release];
	
		self.navigationItem.rightBarButtonItem = viewButton;
	sf.action = @selector(sfMethod);
	pf.action = @selector(pfMethod);
	sif.action = @selector(sifMethod);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
	[self fixupAdView:[UIDevice currentDevice].orientation];
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    [self fixupAdView:toInterfaceOrientation];
}


-(IBAction) doneSA:(id)sender;
{
	tem = [[sender text]retain];
	
	if([tem rangeOfString:@"/"].location == NSNotFound)
	{
		aV = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [tem componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		aV = num/den;
	}
	[sender resignFirstResponder];
}

-(IBAction) doneSB:(id)sender;
{
	tem = [[sender text]retain];
	
	if([tem rangeOfString:@"/"].location == NSNotFound)
	{
		bV = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [tem componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		bV = num/den;
	}
	[sender resignFirstResponder];
}

-(IBAction) doneSC:(id)sender;
{
	tem = [[sender text]retain];
	
	if([tem rangeOfString:@"/"].location == NSNotFound)
	{
		cV = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [tem componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		cV = num/den;
	}
	[sender resignFirstResponder];
}

-(IBAction) doneFA:(id)sender;
{
	tem = [[sender text]retain];
	
	if([tem rangeOfString:@"/"].location == NSNotFound)
	{
		aV = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [tem componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		aV = num/den;
	}
	[sender resignFirstResponder];
}

-(IBAction) doneFB:(id)sender;
{
	tem = [[sender text]retain];
	
	if([tem rangeOfString:@"/"].location == NSNotFound)
	{
		bV = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [tem componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		bV = num/den;
	}
	[sender resignFirstResponder];
}

-(IBAction) doneFC:(id)sender;
{
	tem = [[sender text]retain];
	
	if([tem rangeOfString:@"/"].location == NSNotFound)
	{
		cV = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [tem componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		cV = num/den;
	}
	[sender resignFirstResponder];
}


-(IBAction) donePA:(id)sender;
{
	tem = [[sender text]retain];
	
	if([tem rangeOfString:@"/"].location == NSNotFound)
	{
		aV = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [tem componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		aV = num/den;
	}
	[sender resignFirstResponder];
}

-(IBAction) donePB:(id)sender;
{
	tem = [[sender text]retain];
	
	if([tem rangeOfString:@"/"].location == NSNotFound)
	{
		bV = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [tem componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		bV = num/den;
	}
	[sender resignFirstResponder];
}

-(IBAction) donePD:(id)sender;
{
	tem = [[sender text]retain];
	
	if([tem rangeOfString:@"/"].location == NSNotFound)
	{
		dV = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [tem componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		dV = num/den;
	}
	[sender resignFirstResponder];
}

-(IBAction) donePC:(id)sender;
{
	tem = [[sender text]retain];
	
	if([tem rangeOfString:@"/"].location == NSNotFound)
	{
		cV = [[sender text ]doubleValue];
	}
	else{
		
		NSArray *chunks = [tem componentsSeparatedByString: @"/"];
		double num = [[chunks objectAtIndex:0]doubleValue];
		double den = [[chunks objectAtIndex:1]doubleValue];
		cV = num/den;
	}
	[sender resignFirstResponder];
}


-(void) sfMethod
{
	[self.view addSubview:v1]; 
	[v2 removeFromSuperview];
	[v3 removeFromSuperview];
}

-(void) pfMethod
{
	
	[self.view addSubview:v3]; 
	[v1 removeFromSuperview];
	[v2 removeFromSuperview];
	
}

-(void) sifMethod
{
	[self.view addSubview:v2]; 
	[v1 removeFromSuperview];
	[v3 removeFromSuperview];
	
}

-(IBAction) solve:(id)sender;
{
	if([v1 isDescendantOfView:self.view])
		{
			
			if(bV == 0)
			{
				slope.text = @"Inf.";
				yin.text  = @"None";
				xin.text = [NSString stringWithFormat:@"%.2lf", (cV/aV)];
				
				fourEqn = [[NSString stringWithFormat:@"%@%@%@",[sA text], @"x = ", [sC text]] retain];
				
				NSString *fourLine1 = @"The graph is a vertical line.";
				NSString *fourLine2 =  @"So the slope is infinity or undefined \n"; 
				
				NSString *fourLine3 = @"Since the slope is infinity, The graph runs parallel to the y axis and does not cross it";
				NSString *fourLine4 =  @"So there is no y intercept\n";
				
				NSString *fourLine5 = @"The x intercept can be found by solving for x";
				NSString *fourLine9 = [NSString stringWithFormat:@"%@%.2lf%@%.2lf", @"x = ",cV, @"/", aV];
				NSString *fourLine10 = [NSString stringWithFormat:@"%@%.2lf", @"x = ", (cV/aV)];
				NSString *fourLine11 = [NSString stringWithFormat:@"%@%.2lf", @"So the x intercept is ", (cV/aV)];
				
				NSArray  *fourLinesArray = [NSArray arrayWithObjects:fourLine1, fourLine2, fourLine3, fourLine4, fourLine5, fourLine9, fourLine10, fourLine11, nil];
				fourSol = [[fourLinesArray componentsJoinedByString:@"\n"] retain];
		
				
			}
			
			else if(aV == 0)
			{
				slope.text = @"0.00";
				yin.text  = [NSString stringWithFormat:@"%.2lf", (cV/bV)];
				xin.text = @"None";
				
				fourEqn = [[NSString stringWithFormat:@"%@%@%@",[sB text], @"y = ", [sC text]] retain];
				
				NSString *fourLine1 = @"The graph is a horizontal line.";
				NSString *fourLine2 =  @"So the slope is 0 \n"; 
				
				NSString *fourLine3 = @"Since the slope is 0, The graph runs parallel to the x axis and does not cross it";
				NSString *fourLine4 =  @"So there is no x intercept\n";
				
				NSString *fourLine5 = @"The y intercept can be found by solving for y";
				NSString *fourLine9 = [NSString stringWithFormat:@"%@%.2lf%@%.2lf", @"y = ",cV, @"/", bV];
				NSString *fourLine10 = [NSString stringWithFormat:@"%@%.2lf", @"y = ", (cV/bV)];
				NSString *fourLine11 = [NSString stringWithFormat:@"%@%.2lf", @"So the y intercept is ", (cV/bV)];
				
				NSArray  *fourLinesArray = [NSArray arrayWithObjects:fourLine1, fourLine2, fourLine3, fourLine4, fourLine5, fourLine9, fourLine10, fourLine11, nil];
				fourSol = [[fourLinesArray componentsJoinedByString:@"\n"] retain];
				
				
			}
			
			else {
				

			fourEqn = [[NSString stringWithFormat:@"%@%@%@%@%@",[sA text], @"x + ", [sB text], @"y = ", [sC text]] retain];
			NSString * eFourLine1 = @"Change equation to slope-intercept form by isolating y";
			NSString * eFourLine2 = [[NSString stringWithFormat:@"%@%@%@%@%@%@",[sB text], @"y = -", [sA text], @"x + ", [sC text], @"\n"] retain];
			NSString * eFourLine3 = @"Simplify";
			aV = -1*aV;
			NSString * eFourLine4 = [[NSString stringWithFormat:@"%.2lf%@%.2lf%@%.2lf%@",bV, @"y = ", aV, @"x + ", cV, @"\n"] retain];
			NSString * eFourLine5 = @"Divide all terms by coefficient of y to solve for y";
		    aV = aV/bV; cV = cV/bV;	bV = 1;
			NSString * eFourLine6 = [[NSString stringWithFormat:@"%.2lf%@%.2lf%@%.2lf%@",bV, @"y = ", aV, @"x + ", cV, @"\n"] retain];
			
			NSString *fourLine1 = @"The slope is the coefficient of x";
			NSString *fourLine2 = [NSString stringWithFormat:@"%@%.2lf%@", @"So the slope is ", aV, @"\n"]; 
			
			NSString *fourLine3 = @"The b value is the y intercept";
			NSString *fourLine4 = [NSString stringWithFormat:@"%@%.2lf%@", @"So the y intercept is ", cV, @"\n"];
			
			NSString *fourLine5 = @"The x intercept occurs when y equals 0. Set y = 0 and solve for x";
			NSString *fourLine6 = eFourLine6;
			NSString *fourLine7 = [NSString stringWithFormat:@"%@%.2lf%@%.2lf", @"0 = ", aV, @"x + ", cV ];
			NSString *fourLine8 = [NSString stringWithFormat:@"%@%.2lf%@%.2lf%@", @"-", cV, @" = ", aV, @"x" ];
			NSString *fourLine9 = [NSString stringWithFormat:@"%@%@%.2lf%@%.2lf", @"x = ", @"-",cV, @"/", aV];
			NSString *fourLine10 = [NSString stringWithFormat:@"%@%.2lf", @"x = ", (-1*cV/aV)];
			NSString *fourLine11 = [NSString stringWithFormat:@"%@%.2lf", @"So the x intercept is ", (-1*cV/aV)];
			
			NSArray  *fourLinesArray = [NSArray arrayWithObjects:eFourLine1,eFourLine2,eFourLine3,eFourLine4,eFourLine5,eFourLine6,  fourLine1, fourLine2, fourLine3, fourLine4, fourLine5, fourLine6, fourLine7, fourLine8, fourLine9, fourLine10, fourLine11, nil];
			fourSol = [[fourLinesArray componentsJoinedByString:@"\n"] retain];
			
			slope.text = [NSString stringWithFormat:@"%.2lf", aV];
			yin.text  = [NSString stringWithFormat:@"%.2lf", cV];
			xin.text = [NSString stringWithFormat:@"%.2lf", ((-1*cV/bV)/(aV/bV))];
			
			}
		}
	
	else if([v2 isDescendantOfView:self.view])
	{
		
	if(aV == 0)
	{
		slope.text = @"Inf.";
		yin.text  = @"None";
		xin.text = [NSString stringWithFormat:@"%.2lf", (-1*cV/bV)];
		
		
		fourEqn = [[NSString stringWithFormat:@"%@%@%.2lf", [fB text], @"x = ", (-1*cV)]retain];
		
		
		
		NSString *fourLine1 = @"The graph is a vertical line.";
		NSString *fourLine2 =  @"So the slope is infinity or undefined \n"; 
		
		NSString *fourLine3 = @"Since the slope is infinity, The graph runs parallel to the y axis and does not cross it";
		NSString *fourLine4 =  @"So there is no y intercept\n";
		
		NSString *fourLine5 = @"The x intercept can be found by solving for x";
		NSString *fourLine9 = [NSString stringWithFormat:@"%@%@%.2lf%@%.2lf", @"x = ", @"-",cV, @"/", bV];
		NSString *fourLine10 = [NSString stringWithFormat:@"%@%.2lf", @"x = ", (-1*cV/bV)];
		NSString *fourLine11 = [NSString stringWithFormat:@"%@%.2lf", @"So the x intercept is ", (-1*cV/bV)];
		
		NSArray  *fourLinesArray = [NSArray arrayWithObjects:fourLine1, fourLine2, fourLine3, fourLine4, fourLine5, fourLine9, fourLine10, fourLine11, nil];
		fourSol = [[fourLinesArray componentsJoinedByString:@"\n"] retain];
	}
	
		else if(bV == 0)
		{
			slope.text = @"0.00";
			yin.text  = [NSString stringWithFormat:@"%.2lf", (cV/aV)];
			xin.text = @"None";
			
			
			fourEqn = [[NSString stringWithFormat:@"%@%@%.2lf", [fA text], @"y = ", cV]retain];
			
			
			
			NSString *fourLine1 = @"The graph is a horizontal line.";
			NSString *fourLine2 =  @"So the slope is 0 \n"; 
			
			NSString *fourLine3 = @"Since the slope = 0, The graph runs parallel to the x axis and does not cross it";
			NSString *fourLine4 =  @"So there is no x intercept\n";
			
			NSString *fourLine5 = @"The y intercept can be found by solving for y";
			NSString *fourLine9 = [NSString stringWithFormat:@"%@%.2lf%@%.2lf", @"y = ",cV, @"/", aV];
			NSString *fourLine10 = [NSString stringWithFormat:@"%@%.2lf", @"y = ", (cV/aV)];
			NSString *fourLine11 = [NSString stringWithFormat:@"%@%.2lf", @"So the y intercept is ", (cV/aV)];
			
			NSArray  *fourLinesArray = [NSArray arrayWithObjects:fourLine1, fourLine2, fourLine3, fourLine4, fourLine5, fourLine9, fourLine10, fourLine11, nil];
			fourSol = [[fourLinesArray componentsJoinedByString:@"\n"] retain];
		}
		
	else{
		
	fourEqn = [[NSString stringWithFormat:@"%@%@%@%@%@",[fA text], @"y = ", [fB text], @"x + ", [fC text]]retain];
		
	NSString * fourLine0 = @"Divide all terms by coefficient of y to solve for y";
	 bV = bV/aV; cV = cV/aV; aV = 1;
	NSString * fourLine00 = [[NSString stringWithFormat:@"%@%.2lf%@%.2lf", @"y = ", bV, @"x + ", cV] retain];
	
	NSString *fourLine1 = @"The slope is the coefficient of x";
	NSString *fourLine2 = [NSString stringWithFormat:@"%@%.2lf%@", @"So the slope is ", bV, @"\n"]; 
	
	NSString *fourLine3 = @"The b value is the y intercept";
	NSString *fourLine4 = [NSString stringWithFormat:@"%@%.2lf%@", @"So the y intercept is ", cV, @"\n"];
	
	NSString *fourLine5 = @"The x intercept occurs when y equals 0. Set y = 0 and solve for x";
	NSString *fourLine6 = fourLine00;
	NSString *fourLine7 = [NSString stringWithFormat:@"%@%.2lf%@%.2lf", @"0 = ", bV, @"x + ", cV ];
	NSString *fourLine8 = [NSString stringWithFormat:@"%@%.2lf%@%.2lf%@", @"-", cV, @" = ", bV, @"x" ];
	NSString *fourLine9 = [NSString stringWithFormat:@"%@%@%.2lf%@%.2lf", @"x = ", @"-",cV, @"/", bV];
	NSString *fourLine10 = [NSString stringWithFormat:@"%@%.2lf", @"x = ", (-1*cV/bV)];
	NSString *fourLine11 = [NSString stringWithFormat:@"%@%.2lf", @"So the x intercept is ", (-1*cV/bV)];
	
	NSArray  *fourLinesArray = [NSArray arrayWithObjects:fourLine0, fourLine00, fourLine1, fourLine2, fourLine3, fourLine4, fourLine5, fourLine6, fourLine7, fourLine8, fourLine9, fourLine10, fourLine11, nil];
	fourSol = [[fourLinesArray componentsJoinedByString:@"\n"] retain];
	
	slope.text = [NSString stringWithFormat:@"%.2lf", bV];
	yin.text  = [NSString stringWithFormat:@"%.2lf", cV];
	xin.text = [NSString stringWithFormat:@"%.2lf", ((-1*cV/aV)/(bV/aV))];
		
	}
		
	}
	
	else 
	{
		
		double slopeC = (dV-bV)/(cV-aV);
		double y = (bV-(aV*slopeC));
		double x = ((-1*y)/slopeC);
		
		if(aV == cV)
		{
			slope.text = @"Inf.";
			yin.text = @"None";
			fourEqn = [[NSString stringWithFormat:@"%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@", @"Line with points (", aV, @",", bV, @") and (", cV, @",", dV, @")"]retain];
			xin.text = [NSString stringWithFormat:@"%.2lf", aV];
			NSString *fourLine1 = @"Find the slope of the line";
			NSString *fourLine2 = @"Slope of the line is (y2-y2)/(x2-x1)";
			NSString *fourLine3 = [NSString stringWithFormat:@"%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@", @"Slope = (", dV, @"-", bV, @")/(", cV, @"-", aV, @")"];
			NSString *fourLine4 = [NSString stringWithFormat:@"%@%.2lf%@", @"So the slope = ", slopeC, @"\n"];
			NSString *fourLine5 = [NSString stringWithFormat:@"%@", @"Put any one of the points in y = mx + b form and solve for b"];
			NSString *fourLine6 = [NSString stringWithFormat:@"%@", @"y = mx + b"];
			NSString *fourLine7 = [NSString stringWithFormat:@"%.2lf%@%.2lf%@%.2lf%@", bV,@" = ", slopeC,@"*", aV,@" + b"];
			NSString *fourLine8 = [NSString stringWithFormat:@"%@%.2lf",@"b = ", y];
			NSString *fourLine9 = [NSString stringWithFormat:@"%@", @"So there is no y intercept"];
			NSString *fourLine10 = [NSString stringWithFormat:@"%@%.2lf%@", @"The equation of the line is x = ",aV, @"\n"];
			NSString *fourLine14 = [NSString stringWithFormat:@"%@%.2lf", @"So the x intercept = ", aV];
			
			NSArray  *fourLinesArray = [NSArray arrayWithObjects:fourLine1, fourLine2, fourLine3, fourLine4, fourLine5, fourLine6, fourLine7, fourLine8, fourLine9, fourLine10, fourLine14, nil];
			fourSol = [[fourLinesArray componentsJoinedByString:@"\n"] retain];
		}
		
		else if(bV == dV)
		{
			slope.text = @"0.00";
			yin.text = [NSString stringWithFormat:@"%.2lf", bV];
			fourEqn = [[NSString stringWithFormat:@"%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@", @"Line with points (", aV, @",", bV, @") and (", cV, @",", dV, @")"]retain];
			xin.text = @"None";
			
			NSString *fourLine1 = @"Find the slope of the line";
			NSString *fourLine2 = @"Slope of the line is (y2-y2)/(x2-x1)";
			NSString *fourLine3 = [NSString stringWithFormat:@"%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@", @"Slope = (", dV, @"-", bV, @")/(", cV, @"-", aV, @")"];
			NSString *fourLine4 = [NSString stringWithFormat:@"%@%.2lf%@", @"So the slope = ", slopeC, @"\n"];
			NSString *fourLine5 = [NSString stringWithFormat:@"%@", @"Put any one of the points in y = mx + b form and solve for b"];
			NSString *fourLine6 = [NSString stringWithFormat:@"%@", @"y = mx + b"];
			NSString *fourLine7 = [NSString stringWithFormat:@"%.2lf%@%.2lf%@%.2lf%@", bV,@" = ", slopeC,@"*", aV,@" + b"];
			NSString *fourLine8 = [NSString stringWithFormat:@"%@%.2lf",@"b = ", y];
			NSString *fourLine9 = [NSString stringWithFormat:@"%@%.2lf", @"So the y intercept = ", y];
			NSString *fourLine10 = [NSString stringWithFormat:@"%@%.2lf%@", @"The equation of the line is y = ",y, @"\n"];
			NSString *fourLine11 = [NSString stringWithFormat:@"%@", @"y is 0 at the x intercept. Substitute 0 for y and solve for the x intercept"];
			NSString *fourLine12 = [NSString stringWithFormat:@"%@%.2lf%@%.2lf", @"0 = ",slopeC,@"x + ",y];
			NSString *fourLine13 = [NSString stringWithFormat:@"%@%.2lf", @"x = ",x];
			NSString *fourLine14 = [NSString stringWithFormat:@"%@", @"So there is no x intercept"];
			
			NSArray  *fourLinesArray = [NSArray arrayWithObjects:fourLine1, fourLine2, fourLine3, fourLine4, fourLine5, fourLine6, fourLine7, fourLine8, fourLine9, fourLine10, fourLine11, fourLine12, fourLine13, fourLine14, nil];
			fourSol = [[fourLinesArray componentsJoinedByString:@"\n"] retain];		}
		
		else{
		
			slope.text = [NSString stringWithFormat:@"%.2lf", slopeC];
		yin.text  = [NSString stringWithFormat:@"%.2lf", y ];
		xin.text = [NSString stringWithFormat:@"%.2lf", x];
		fourEqn = [[NSString stringWithFormat:@"%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@", @"Line with points (", aV, @",", bV, @") and (", cV, @",", dV, @")"]retain];
		
		
		NSString *fourLine1 = @"Find the slope of the line";
		NSString *fourLine2 = @"Slope of the line is (y2-y2)/(x2-x1)";
		NSString *fourLine3 = [NSString stringWithFormat:@"%@%.2lf%@%.2lf%@%.2lf%@%.2lf%@", @"Slope = (", dV, @"-", bV, @")/(", cV, @"-", aV, @")"];
		NSString *fourLine4 = [NSString stringWithFormat:@"%@%.2lf%@", @"So the slope = ", slopeC, @"\n"];
		NSString *fourLine5 = [NSString stringWithFormat:@"%@", @"Put any one of the points in y = mx + b form and solve for b"];
		NSString *fourLine6 = [NSString stringWithFormat:@"%@", @"y = mx + b"];
	    NSString *fourLine7 = [NSString stringWithFormat:@"%.2lf%@%.2lf%@%.2lf%@", bV,@" = ", slopeC,@"*", aV,@" + b"];
		NSString *fourLine8 = [NSString stringWithFormat:@"%@%.2lf",@"b = ", y];
		NSString *fourLine9 = [NSString stringWithFormat:@"%@%.2lf", @"So the y intercept = ", y];
		NSString *fourLine10 = [NSString stringWithFormat:@"%@%.2lf%@%.2lf%@", @"The equation of the line is y = ", slopeC,@"x + ",y, @"\n"];
		NSString *fourLine11 = [NSString stringWithFormat:@"%@", @"y is 0 at the x intercept. Substitute 0 for y and solve for the x intercept"];
		NSString *fourLine12 = [NSString stringWithFormat:@"%@%.2lf%@%.2lf", @"0 = ",slopeC,@"x + ",y];
		NSString *fourLine13 = [NSString stringWithFormat:@"%@%.2lf", @"x = ",x];
		NSString *fourLine14 = [NSString stringWithFormat:@"%@%.2lf", @"So the x intercept = ", x];
		
		NSArray  *fourLinesArray = [NSArray arrayWithObjects:fourLine1, fourLine2, fourLine3, fourLine4, fourLine5, fourLine6, fourLine7, fourLine8, fourLine9, fourLine10, fourLine11, fourLine12, fourLine13, fourLine14, nil];
		fourSol = [[fourLinesArray componentsJoinedByString:@"\n"] retain];
			
	
		}
	}

	
}

-(void) fourViewSol
{
	
	fullSolutionViewController *fsReference = [[fullSolutionViewController alloc] initWithNibName:@"fullSolutionViewController" bundle:nil];
	fsReference.SOL = fourSol;
	fsReference.TYP = fourType;
	fsReference.EQN = fourEqn;
	[self.navigationController pushViewController:fsReference animated:YES];
	[fsReference release];
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
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


- (void)dealloc {

	[fA release];
	[fB release];
	[fC release];
	[pA release];
	[pB release];
	[pC release];
	[pD release];
	[sA release];
	[sB release];
	[sC release];
	[fButton release];
	[slope release];
	[xin release];
	[yin release];
	[sf release];
	[sif release];
	[v1 release];
	[v2 release];
	[v3 release];
	[pf release];
	self.contentView = nil;
	self.adBannerView = nil;
    [super dealloc];
}

@end
