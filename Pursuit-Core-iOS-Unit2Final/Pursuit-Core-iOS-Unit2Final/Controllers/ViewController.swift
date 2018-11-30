//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var allCrayons = Crayon.allTheCrayons
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        tableView.dataSource = self
       self.tableView.reloadData()
    }
  

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow,
            let detailViewController = segue.destination as? DetailViewController else {return}
        let colorData = allCrayons[indexPath.row]
        
        detailViewController.colorData = colorData
        
    }
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allCrayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentCrayon = allCrayons[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath) as? ColorCell else {return UITableViewCell()}
        cell.color.text = currentCrayon.name
        cell.hexValue.text = currentCrayon.hex
        cell.backgroundColor = UIColor(red: CGFloat(currentCrayon.red/255), green: CGFloat(currentCrayon.green/255), blue: CGFloat(currentCrayon.blue/255), alpha: 1)
        
        return cell
        
    }
    
    
}


