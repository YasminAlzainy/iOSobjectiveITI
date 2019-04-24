//
//  ViewController.m
//  Mao
//
//  Created by JETS Mobile Lab - 8 on 4/23/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "YasminAnnotation.h"
@interface ViewController ()

@end

@implementation ViewController

# pragma mark : Life Vycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [_mapView setZoomEnabled:NO];
    [_mapView setDelegate:self];
    
    _locManger = [CLLocationManager new];
    [_locManger startUpdatingLocation];
    [_locManger setDistanceFilter:kCLHeadingFilterNone];
    [_locManger setDesiredAccuracy:kCLLocationAccuracyBest];
    [_locManger setDelegate:self];
    //[_locManger requestAlwaysAuthorization];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
}


# pragma mark : MapView Methods of Delegate

- (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated
{
    printf("regionWillChangeAnimated \n");
}

- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated
{
    printf("regionDidChangeAnimated \n");
}

- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view
{
    printf("Annotaaaaation");
}

# pragma mark : IB Action
- (IBAction)click:(UITapGestureRecognizer *)sender {
    CGPoint touchPoint = [sender locationInView:_mapView];
    
    CLLocationCoordinate2D cooradinate = [_mapView convertPoint:touchPoint toCoordinateFromView:_mapView];
    YasminAnnotation * annotation = [YasminAnnotation new];
    annotation.coordinate = cooradinate;
    annotation.title = @"Yasmin ^_^";
    annotation.subtitle = @"My Title";
    
    [_mapView addAnnotation:annotation];
}

# pragma mark : Location Manager
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations
{
    CLLocation * location = [locations lastObject];
    printf("didUpdateLocations \n");
    printf("%f \n" ,location.coordinate.latitude);
    printf("%f \n" ,location.coordinate.longitude);

}

@end
