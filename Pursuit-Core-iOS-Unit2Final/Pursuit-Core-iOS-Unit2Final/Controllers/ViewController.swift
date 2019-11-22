//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var crayon = [Crayon]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    loadData()
    
  }

    func loadData() {
        crayon = Crayon.allTheCrayons
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayon.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        let someCrayon = crayon[indexPath.row]
        cell.textLabel?.text = someCrayon.name
        cell.detailTextLabel?.text = someCrayon.hex
        return cell
    }
}
