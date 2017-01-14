//
//  RootViewController.swift
//  Barhops
//
//  Created by Matthew Mauro on 2017-01-14.
//  Copyright © 2017 Matthew Mauro. All rights reserved.
//

import UIKit
import MMDrawerController
import GoogleMaps
import GooglePlaces

class RootViewController: MMDrawerController {

    override func viewDidLoad() {
        super.viewDidLoad()

        GMSPlacesClient.provideAPIKey("AIzaSyAdgeE9spbN9uf9h1HjXiFCcSNqIlSnD3Q")
        GMSServices.provideAPIKey("AIzaSyAdgeE9spbN9uf9h1HjXiFCcSNqIlSnD3Q")
    }
}
