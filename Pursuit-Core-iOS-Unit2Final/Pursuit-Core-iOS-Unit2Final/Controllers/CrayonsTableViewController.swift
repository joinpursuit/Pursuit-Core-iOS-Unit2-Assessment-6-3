//
//  CrayonsTableViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Malcolm S. Turnquest on 8/21/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CrayonsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Crayon.allTheCrayons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CrayonColorCell", for: indexPath)

       let crayons = Crayon.allTheCrayons[indexPath.row]
        cell.textLabel?.text = crayons.name
        cell.detailTextLabel?.text = crayons.hex
        

        return cell
    }

}
