//
//  ViewController.h
//  Mao
//
//  Created by JETS Mobile Lab - 8 on 4/23/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate , CLLocationManagerDelegate>
- (IBAction)click:(UITapGestureRecognizer *)sender;

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@property CLLocationManager * locManger;
@end

