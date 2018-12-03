//
//  ColorMenuViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Jian Ting Li on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ColorMenuViewController: UIViewController {
    
    @IBOutlet weak var crayonTableView: UITableView!
    var allTheCrayons = [Crayon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        crayonTableView.dataSource = self
        allTheCrayons = Crayon.allTheCrayons
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = crayonTableView.indexPathForSelectedRow,
            let toDestinedViewController = segue.destination as? DetailColorViewController else {
                fatalError("indexPath or DetailColorViewController is nil")
        }
        
        let selectedCrayon = allTheCrayons[indexPath.row]
        let color = CrayonBrain.rGBtoUIColor(red: selectedCrayon.red, green: selectedCrayon.green, blue: selectedCrayon.blue, alpha: 1.0)
        
        toDestinedViewController.crayon = selectedCrayon
        toDestinedViewController.defaultColor = color
    }

}

extension ColorMenuViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allTheCrayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = crayonTableView.dequeueReusableCell(withIdentifier: "CrayonCell", for: indexPath)
        
        let crayon = allTheCrayons[indexPath.row]
        let color = CrayonBrain.rGBtoUIColor(red: crayon.red, green: crayon.green, blue: crayon.blue, alpha: 1.0)
            
        cell.textLabel?.text = crayon.name
        cell.detailTextLabel?.text = crayon.hex
        cell.backgroundColor = color
        
        if CrayonBrain.isScreenTooDim(luma: CrayonBrain.rgbToLuma(crayon.red, crayon.green, crayon.blue), alpha: 1) {
            cell.textLabel?.textColor = .white
            cell.detailTextLabel?.textColor = .white
        }
        
        return cell
    }
    
    
}
