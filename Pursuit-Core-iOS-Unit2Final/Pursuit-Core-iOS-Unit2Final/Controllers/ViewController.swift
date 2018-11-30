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
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let indexPath = myTableView.indexPathForSelectedRow,
    let myCrayonDetailedViewController = segue.destination as? CrayonDetailedViewController else {fatalError("didn't find CrayonDtailedViewController")}
    
    let currentCrayon = crayons[indexPath.row]
    myCrayonDetailedViewController.crayonColorInfo = currentCrayon
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
    cell.backgroundColor = UIColor.init(displayP3Red: CGFloat(currentColor.red), green: CGFloat(currentColor.green), blue: CGFloat(currentColor.blue), alpha: 1.0)
    cell.textLabel?.textColor = .white
    return cell
    
  }
}

