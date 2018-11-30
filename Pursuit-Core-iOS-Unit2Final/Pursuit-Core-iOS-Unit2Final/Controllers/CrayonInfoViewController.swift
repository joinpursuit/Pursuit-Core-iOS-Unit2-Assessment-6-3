//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonInfoViewController: UIViewController {
    @IBOutlet weak var crayonTableView: UITableView!
    var crayonNames = Crayon.allTheCrayons.map{$0.name}
    var crayonColorRed = Crayon.allTheCrayons.map{$0.red}
    var  crayonColorBlue = Crayon.allTheCrayons.map{$0.blue}
    var  crayonColorGreen = Crayon.allTheCrayons.map{$0.green}
    var crayonHexValues = Crayon.allTheCrayons.map{$0.hex}
  override func viewDidLoad() {
    super.viewDidLoad()
   crayonTableView.delegate = self
    crayonTableView.dataSource = self
  }


}
extension CrayonInfoViewController: UITableViewDelegate{
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let indexPath = crayonTableView.indexPathForSelectedRow
        guard let destination = segue.destination as? CrayonDetailledViewController else {fatalError("no cell found")}
        destination.crayonNames = crayonNames[indexPath!.row]
        destination.crayonColorRed = crayonColorRed[indexPath!.row]
        destination.crayonColorGreen = crayonColorGreen[indexPath!.row]
        destination.crayonColorBlue = crayonColorBlue[indexPath!.row]
        destination.crayonHexValues = crayonHexValues[indexPath!.row]
        destination.modalTransitionStyle = .coverVertical
    }
}
extension CrayonInfoViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return crayonNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = crayonTableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        cell.textLabel?.text = crayonNames[indexPath.row]
        cell.detailTextLabel?.text = crayonHexValues[indexPath.row]
        cell.backgroundColor = UIColor(displayP3Red: CGFloat(crayonColorRed[indexPath.row]/255), green: CGFloat(crayonColorGreen[indexPath.row]/255), blue: CGFloat(crayonColorBlue[indexPath.row]/255), alpha: 1)
        if crayonNames[indexPath.row] == "Black"{
            cell.textLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            cell.detailTextLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        return cell
    }
}
