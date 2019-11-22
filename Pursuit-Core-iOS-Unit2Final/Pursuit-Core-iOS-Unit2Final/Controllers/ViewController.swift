//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var crayon = [Crayon]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        loadData()
        tableView.delegate = self
        
    }
    
    func loadData() {
        crayon = Crayon.allTheCrayons
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare for segue")
        guard let crayonDVC = segue.destination as? DetailViewController,
            let indexPath = tableView.indexPathForSelectedRow else {
                fatalError("error")
        }
        
        let crayola = crayon[indexPath.row]

        crayonDVC.cray = crayola

        crayonDVC.updateUI(for: crayola)
}

}
    
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayon.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        let someCrayon = crayon[indexPath.row]
        cell.textLabel?.text = someCrayon.name
        cell.detailTextLabel?.text = someCrayon.hex
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let someColors = crayon[indexPath.row]
        let theColors = UIColor(red: CGFloat(someColors.red)/CGFloat(255),
                                green: CGFloat(someColors.green)/CGFloat(255),
                                blue: CGFloat(someColors.blue)/CGFloat(255),
                                alpha: 1)
        cell.backgroundColor = theColors
    }
    
}


