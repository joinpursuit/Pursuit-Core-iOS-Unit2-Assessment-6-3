//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {

    @IBOutlet weak var crayontableview: UITableView!
    
    @IBOutlet weak var crayoncell: UITableViewCell!
    
    
     var crayons = Crayon.allTheCrayons
    
    override func viewDidLoad() {
    super.viewDidLoad()
        crayontableview.dataSource = self
        crayontableview.delegate = self
        title = "Crayons (\(crayons.count))"
  }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = crayontableview.indexPathForSelectedRow,
            let crayonDVC = segue.destination as? CrayonDetailedViewController
            else {return}
        let mycrayon = crayons[indexPath.row]
        crayonDVC.mycrayons = crayons
        
    }
    
}

extension CrayonViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Crayon.allTheCrayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = crayontableview.dequeueReusableCell(withIdentifier: "CrayonCell", for: indexPath)
        let crayon = crayons[indexPath.row]
        cell.textLabel?.text = crayon.name
        cell.detailTextLabel?.text = crayon.hex
        cell.backgroundColor = UIColor.init(displayP3Red: CGFloat(crayon.red / 255),
                                            green: CGFloat(crayon.green / 255),
                                            blue: CGFloat(crayon.blue / 255), alpha: 1)

        return cell
    }
}

extension CrayonViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
