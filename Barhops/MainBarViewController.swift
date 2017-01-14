//
//  ViewController.swift
//  Barhops
//
//  Created by Matthew Mauro on 2017-01-14.
//  Copyright © 2017 Matthew Mauro. All rights reserved.
//

import UIKit
import GoogleMaps
import MMDrawerController

class MainBarViewController: UIViewController, CLLocationManagerDelegate {


    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let menu = UIButton(frame: CGRect(x: 20, y: 10, width: 30, height: 30))
        menu.addTarget(self, action: #selector(MainBarViewController.toggleMenu(_:)), for: UIControlEvents.touchUpInside)
        menu.backgroundColor = UIColor.gray
        self.view.addSubview(menu)
    }
    
    override func loadView() {
        //loads to Lighthouse Labs to start
        
        // CLLocation
        self.locationManager.requestAlwaysAuthorization()
        self.locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
        
        let camera = GMSCameraPosition.camera(withLatitude: 43.644652, longitude: -79.394988, zoom: 15.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        do {
            // Set the map style by passing the URL of the local file.
            if let styleURL = Bundle.main.url(forResource: "style", withExtension: "json") {
                mapView.mapStyle = try GMSMapStyle(contentsOfFileURL: styleURL)
            } else {
                NSLog("Unable to find style.json")
            }
        } catch {
            NSLog("One or more of the map styles failed to load. \(error)")
        }
        self.view = mapView
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 43.644652, longitude: -79.394988)
        marker.title = "Lighthouse Labs"
        marker.snippet = "Toronto, Ontario"
        marker.map = mapView
        
    }
    @IBAction func toggleMenu(_ sender: Any) {
        let rootV = UIApplication.shared.keyWindow?.rootViewController as! RootViewController
        rootV.toggle(MMDrawerSide.left, animated: true, completion: nil)
        
    }
}
