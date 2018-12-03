//
//  CrayonsViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Olimpia on 12/3/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonsViewController: UIViewController {
    
    
private var crayonColor = Crayon.allTheCrayons
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
      myTableView.dataSource = self
    title = "Box if crayons 🖍"
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let destination = segue.destination as? DetailedViewController else { return }
       let crayonData = crayonColor[myTableView.indexPathForSelectedRow!.row]
        destination.detailedCrayon = crayonData
    
    }
    
}

extension CrayonsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return crayonColor.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let currentCrayon = crayonColor[indexPath.row]
        guard let cell = myTableView.dequeueReusableCell(withIdentifier: "CustomCrayonCell" , for: indexPath) as? CrayonTableViewCell else { fatalError("CrayonTableViewCell not found")}
        cell.crayonColor?.text = currentCrayon.hex
        cell.crayonName?.text = currentCrayon.name
        cell.backgroundColor = UIColor(displayP3Red: CGFloat(currentCrayon.red / 255), green: CGFloat(currentCrayon.green / 255), blue: CGFloat(currentCrayon.blue / 255), alpha: 1.0)
        
        return cell
        
    }
    
    
}
