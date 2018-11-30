//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    var crayons = Crayon.allTheCrayons
    
    override func viewDidLoad() {
    super.viewDidLoad()
    myTableView.dataSource = self
  }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = myTableView.indexPathForSelectedRow,
            let detailViewController = segue.destination as? DetailViewController else { return }
        let crayon = Crayon.allTheCrayons[indexPath.row]
        detailViewController.crayons = crayon
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "colorsCell", for: indexPath)
        let red = crayons[indexPath.row].red / 255
        let green = crayons[indexPath.row].green / 255
        let blue = crayons[indexPath.row].blue / 255
        cell.textLabel?.text = crayons[indexPath.row].name
        cell.detailTextLabel?.text = crayons[indexPath.row].hex
        let backgroundColor = UIColor(displayP3Red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1.0)
        cell.contentView.backgroundColor = backgroundColor
        return cell
    }
    
    
}

