//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonTableViewController: UIViewController {

    @IBOutlet weak var CrayonTableView: UITableView!
    
    var allTheCrayons = Crayon.allTheCrayons
    
    
  override func viewDidLoad() {
    super.viewDidLoad()
    CrayonTableView.dataSource = self
  }
    
}

extension CrayonTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allTheCrayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = CrayonTableView.dequeueReusableCell(withIdentifier: "CrayonCell", for: indexPath)
        let crayon = allTheCrayons[indexPath.row]
        
        cell.textLabel?.text = crayon.name
    
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }
}

