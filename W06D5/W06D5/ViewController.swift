//
//  ViewController.swift
//  W06D5
//
//  Created by Sam Meech-Ward on 2019-02-14.
//  Copyright © 2019 meech-ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
  
  

  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
//    speed(spaceShip: "")
    tableView.dataSource = self
  }

  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 0
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return UITableViewCell()
  }

}

