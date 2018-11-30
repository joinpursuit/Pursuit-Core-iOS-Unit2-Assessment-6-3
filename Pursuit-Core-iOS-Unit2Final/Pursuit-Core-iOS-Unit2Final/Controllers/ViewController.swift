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

    @IBOutlet weak var crayonTableView: UITableView!
    override func viewDidLoad() {
    super.viewDidLoad()
    crayonTableView.dataSource = self
    crayonTableView.delegate = self
  }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = crayonTableView.indexPathForSelectedRow,
            let detailViewController = segue.destination as? DetailViewController else {return}
        let crayon = crayons[indexPath.row]
        
        //passing the recipe data to the recipeDetailViewController
        detailViewController.crayon = crayon
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = crayonTableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath) as? CrayonCell else {return UITableViewCell()}
        
            cell.crayonName.text = crayons[indexPath.row].name
            cell.crayonHex.text = crayons[indexPath.row].hex
        
        cell.backgroundColor = UIColor(displayP3Red: CGFloat(crayons[indexPath.row].red), green: (CGFloat(crayons[indexPath.row].green)), blue: (CGFloat(crayons[indexPath.row].blue)), alpha: CGFloat(255.0))

            return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
