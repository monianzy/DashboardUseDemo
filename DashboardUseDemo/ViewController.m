//
//  ViewController.m
//  DashboardUseDemo
//
//  Created by yi on 15/11/26.
//  Copyright © 2015年 yi. All rights reserved.
//

#import "ViewController.h"
#import "WMGaugeView.h"

#define RGB(r,g,b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0]

@interface ViewController ()
@property (strong, nonatomic) WMGaugeView *gaugeView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
//    @property (nonatomic) bool showInnerBackground;
//    @property (nonatomic) bool showInnerRim;
//    @property (nonatomic) CGFloat innerRimWidth;
//    @property (nonatomic) CGFloat innerRimBorderWidth;
//    @property (nonatomic) WMGaugeViewInnerBackgroundStyle innerBackgroundStyle;
//    
//    @property (nonatomic) CGFloat needleWidth;
//    @property (nonatomic) CGFloat needleHeight;
//    @property (nonatomic) CGFloat needleScrewRadius;
//    @property (nonatomic) WMGaugeViewNeedleStyle needleStyle;
//    @property (nonatomic) WMGaugeViewNeedleScrewStyle needleScrewStyle;
//    
//    @property (nonatomic) CGFloat scalePosition;
//    @property (nonatomic) CGFloat scaleStartAngle;
//    @property (nonatomic) CGFloat scaleEndAngle;
//    @property (nonatomic) CGFloat scaleDivisions;
//    @property (nonatomic) CGFloat scaleSubdivisions;
//    @property (nonatomic) bool showScaleShadow;
//    @property (nonatomic) WMGaugeViewSubdivisionsAlignment scalesubdivisionsaligment;
//    @property (nonatomic) CGFloat scaleDivisionsLength;
//    @property (nonatomic) CGFloat scaleDivisionsWidth;
//    @property (nonatomic) CGFloat scaleSubdivisionsLength;
//    @property (nonatomic) CGFloat scaleSubdivisionsWidth;
//    
//    @property (nonatomic, strong) UIColor *scaleDivisionColor;
//    @property (nonatomic, strong) UIColor *scaleSubDivisionColor;
//    
//    @property (nonatomic, strong) UIFont *scaleFont;
//    
//    @property (nonatomic) CGFloat rangeLabelsWidth;
//    
//    @property (nonatomic) float value;
//    @property (nonatomic) float minValue;
//    @property (nonatomic) float maxValue;
//    
//    @property (nonatomic) bool showRangeLabels;
//    @property (nonatomic) CGFloat rangeLabelsFontKerning;
//    @property (nonatomic, strong) NSArray *rangeValues;
//    @property (nonatomic, strong) NSArray *rangeColors;
//    @property (nonatomic, strong) NSArray *rangeLabels;
//    
//    @property (nonatomic, strong) NSString *unitOfMeasurement;
//    @property (nonatomic) bool showUnitOfMeasurement;
    
    
    _gaugeView = [[WMGaugeView alloc] initWithFrame:CGRectMake(20, 20, 200, 200)];
    _gaugeView.backgroundColor = [UIColor whiteColor];
    _gaugeView.scaleSubdivisions = 14;
    _gaugeView.maxValue = 100.0;
    _gaugeView.minValue = 0;
    _gaugeView.showRangeLabels = YES;
    _gaugeView.rangeValues = @[ @20,@60,@100];
    _gaugeView.rangeColors = @[ RGB(34, 189, 190),  RGB(71, 158, 238),  RGB(207, 99, 108),RGB(255, 0, 0),RGB(147, 0, 0),RGB(0, 0, 0)];
    //    _gaugeView.rangeLabels = @[ @"VERY LOW",                      @"OK"    ,@"12"    ];
    _gaugeView.unitOfMeasurement = @"PH值";
    _gaugeView.showUnitOfMeasurement = YES;
    
//    [_gaugeView setValue:9.28 animated:NO];
    
    [_gaugeView setValue:2.3 animated:YES duration:1 completion:^(BOOL finished) {
        
    }];
    
//    _gaugeView.innerBackgroundStyle = WMGaugeViewInnerBackgroundStyleNone;
//    _gaugeView.needleScrewStyle = WMGaugeViewNeedleScrewStyleGradient;
//    _gaugeView.needleStyle = WMGaugeViewNeedleStyle3D;
//    _gaugeView.scalesubdivisionsaligment =  WMGaugeViewSubdivisionsAlignmentBottom;
    [self.view addSubview:_gaugeView];
    
    
    
    UIButton *testBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    testBtn.frame = CGRectMake(30, 300, 100, 30);
    [testBtn setTitle:@"change" forState:UIControlStateNormal];
    testBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    [testBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [testBtn addTarget:self action:@selector(testBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testBtn];
}




- (void)testBtnClick:(UIButton *)btn
{
    [_gaugeView setValue:arc4random()%100 animated:YES duration:1 completion:^(BOOL finished) {
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
