//
//  ProfileViewController.swift
//  Barhops
//
//  Created by Matthew Mauro on 2017-01-14.
//  Copyright © 2017 Matthew Mauro. All rights reserved.
//

import UIKit
import Alamofire

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var barTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.barTable.dataSource = self
        self.barTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
