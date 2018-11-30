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
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let crayon = crayons[indexPath.row]
        let convertedRed = crayon.red/255
        let convertedGreen = crayon.green/255
        let convertedBlue = crayon.blue/255
        
        let cell = crayonTableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        cell.textLabel!.text = String(crayon.name)
        cell.detailTextLabel!.text = String(crayon.hex)
        cell.backgroundColor = UIColor(displayP3Red: CGFloat(convertedRed), green: CGFloat(convertedGreen), blue: CGFloat(convertedBlue), alpha: 1)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = segue.destination as? DetailViewController,
            let DetailViewController = crayonTableView.indexPathForSelectedRow else { return }
        let crayon = crayons[DetailViewController.row]
        indexPath.aCrayon = crayon
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}

