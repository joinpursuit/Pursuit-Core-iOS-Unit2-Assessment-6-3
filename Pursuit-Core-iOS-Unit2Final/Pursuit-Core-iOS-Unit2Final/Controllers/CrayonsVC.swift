//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var crayons = [Crayon]() {
        didSet{
            tableView.reloadData()
            
        }
    }
    
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    crayons = Crayon.allTheCrayons
  }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let colorSliderVC = segue.destination as? ColorSlidersVC, let indexPath = tableView.indexPathForSelectedRow else {
            fatalError("at segue")
        }
        colorSliderVC.currentColor = crayons[indexPath.row]
    }
    

}

extension CrayonsVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        
        let crayonColor = crayons[indexPath.row]
        
        let redAsCGFloat = CGFloat(crayonColor.red) / 255
        let greenAsCGFloat = CGFloat(crayonColor.green) / 255
        let blueAsCGFloat = CGFloat(crayonColor.blue) / 255
        
        cell.textLabel?.text = crayonColor.name
        cell.detailTextLabel?.text = crayonColor.hex
        cell.backgroundColor = UIColor(red: redAsCGFloat, green: greenAsCGFloat, blue: blueAsCGFloat, alpha: 1)
        cell.textLabel?.textColor = .white
        cell.detailTextLabel?.textColor = .white
        
        return cell
    }
}
