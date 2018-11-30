//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var crayons = Crayon.allTheCrayons
    @IBOutlet weak var cTableView: UITableView!
    override func viewDidLoad() {
    super.viewDidLoad()
        cTableView.dataSource = self
  }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailViewController, let colorSelected = cTableView.indexPathForSelectedRow else {return}
        destination.colors = crayons[colorSelected.row]
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = cTableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath) as? CrayonViewCell else {return UITableViewCell()}
        let cellToAdd = crayons[indexPath.row]
        
        cell.backgroundColor = UIColor(red: CGFloat(cellToAdd.red/255.0), green: CGFloat(cellToAdd.green/255.0), blue: CGFloat(cellToAdd.blue/255.0), alpha: 0.5)
        cell.textLabel?.text = cellToAdd.name
        cell.detailTextLabel?.text = cellToAdd.hex
        return cell
    }
}
