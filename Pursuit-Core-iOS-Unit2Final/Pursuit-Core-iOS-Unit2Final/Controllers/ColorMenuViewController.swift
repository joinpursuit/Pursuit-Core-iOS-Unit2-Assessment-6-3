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
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        <#code#>
//    }

}

extension ColorMenuViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allTheCrayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = crayonTableView.dequeueReusableCell(withIdentifier: "CrayonCell", for: indexPath)
        
        let crayon = allTheCrayons[indexPath.row]
        let color = UIColor.init(red: CGFloat(crayon.red / 255), green: CGFloat(crayon.green / 255), blue: CGFloat(crayon.blue / 255), alpha: 1.0)
            
        cell.textLabel?.text = crayon.name
        cell.detailTextLabel?.text = crayon.hex
        cell.backgroundColor = color
        
        //if background-color is too dark change the text-color to a lighter color
        
        return cell
    }
    
    
}
