//
//  CrayonViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Maitree Bain on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var crayons = [Crayon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        crayons = Crayon.singleCrayon()
    }
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepareForSegue")
    
    
    guard let detailViewController = segue.destination as? DetailViewController,
        let crayonItem = tableView.indexPathForSelectedRow else {
        fatalError("no destination")
    }
    detailViewController.crayon = crayons[crayonItem.row]
    detailViewController.navigationItem.title = crayons[crayonItem.row].name
    }

}

extension CrayonViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        
        let crayonValues = crayons[indexPath.row]
        
        cell.textLabel?.text = crayonValues.name
        cell.detailTextLabel?.text = crayonValues.hex
        cell.backgroundColor = UIColor(displayP3Red: CGFloat(crayonValues.red / 255), green: CGFloat(crayonValues.green / 255), blue: CGFloat(crayonValues.blue / 255), alpha: 1.0)
        
        if cell.textLabel?.text == "Black" {
            cell.textLabel?.textColor = .white
            cell.detailTextLabel?.textColor = .white
        }
        
        return cell
    }


}
