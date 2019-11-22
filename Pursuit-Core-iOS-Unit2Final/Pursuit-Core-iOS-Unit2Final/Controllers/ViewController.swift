//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var crayons = [Crayon]() {
        didSet {
            tableView.reloadData()
        }
    }
    
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    loadData()
  }
    
    func loadData() {
        crayons = Crayon.allTheCrayons
    }

// Segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController, let indexPath = tableView.indexPathForSelectedRow else {fatalError("failed to access DetailViewController")}
        
        detailVC.crayon = crayons[indexPath.row]
       // detailVC.redColor = crayons[indexPath.row].red
    }
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        crayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        let crayon = crayons[indexPath.row]
        
        cell.textLabel?.text = crayon.name
        cell.detailTextLabel?.text = crayon.hex
        cell.textLabel?.textColor = .white
        cell.detailTextLabel?.textColor = .white
        cell.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red/255.0), green: CGFloat(crayon.green/255.0) , blue: CGFloat(crayon.blue/255.0), alpha: 1.0)
        
        return cell 
    }
    
    
}
