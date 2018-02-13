//
//  ViewController.m
//  DemoLocalisation
//
//  Created by Luke on 12/02/2018.
//  Copyright © 2018 demolocalisation. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.labelTotalAnnualRevenue.text = NSLocalizedString(@"Total Annual Revenue", @"total value of a product");
    self.labelTodaysDate.text = NSLocalizedString(@"Todays Date", @"The calendar date for the current date");
    
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterCurrencyStyle;
    f.usesGroupingSeparator = YES;
    f.currencyCode = @"USD";
    
    self.labelTotalAnnualRevenueValue.text = [f stringFromNumber:[NSNumber numberWithInteger:13000000]];
    
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    df.dateStyle = NSDateFormatterFullStyle;
    
    self.labelTodaysDateValue.text = [df stringFromDate:[NSDate dateWithTimeIntervalSinceNow:0]];
    
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
