//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    var crayons = Crayon.allTheCrayons
    
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
        let cell = myTableView.dequeueReusableCell(withIdentifier: "colorsCell", for: indexPath)
        cell.textLabel?.text = crayons[indexPath.row].name
        cell.detailTextLabel?.text = crayons[indexPath.row].hex
        return cell
    }
    
    
}
