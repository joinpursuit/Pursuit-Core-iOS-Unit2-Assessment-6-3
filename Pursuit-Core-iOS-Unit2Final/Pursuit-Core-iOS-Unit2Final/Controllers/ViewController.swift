//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var crayons = Crayon.allTheCrayons
  
  @IBOutlet weak var myTableView: UITableView!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    myTableView.dataSource = self

  }


}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return crayons.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = myTableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
    
    let currentColor = crayons[indexPath.row]
    
    cell.textLabel?.text = currentColor.name
    cell.detailTextLabel?.text = currentColor.hex
    
    return cell
    
  }
}

