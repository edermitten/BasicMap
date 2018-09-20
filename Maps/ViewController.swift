//
//  ViewController.swift
//  Maps
//
//  Created by Eder Mitten on 9/20/18.
//  Copyright © 2018 Eder Mitten. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let latitude: CLLocationDegrees = 28.418720
        let longitude: CLLocationDegrees = -81.581190
        
        let latDelta: CLLocationDegrees = 0.05
        let lonDelta: CLLocationDegrees = 0.05
        
        let spam : MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        let location : CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let region : MKCoordinateRegion = MKCoordinateRegion(center: location, span: spam)
        
        map.setRegion(region, animated: true)
    }


}

