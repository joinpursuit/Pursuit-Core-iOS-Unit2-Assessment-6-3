//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {

    var crayons = Crayon.allTheCrayons
    
    @IBOutlet weak var CrayonTableViewCell: UITableView!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        CrayonTableViewCell.dataSource = self
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexpath = CrayonTableViewCell.indexPathForSelectedRow else {return }
        let selectedCrayon = crayons[indexpath.row]
        guard let crayonDetail = segue.destination as? CrayonDetailViewController else {return}
        crayonDetail.crayon = selectedCrayon
        
    }


}

extension CrayonViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return crayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell") as? CrayonTableViewCell
            else{return UITableViewCell() }
        
        cell.textLabel?.text = crayons[indexPath.row].name
        cell.detailTextLabel?.text = crayons[indexPath.row].hex
        cell.backgroundColor = UIColor.init(red: CGFloat(crayons[indexPath.row].red/255), green: CGFloat(crayons[indexPath.row].green/255), blue: CGFloat(crayons[indexPath.row].blue/255), alpha: 1.0)
    
        return cell
        
}
}
