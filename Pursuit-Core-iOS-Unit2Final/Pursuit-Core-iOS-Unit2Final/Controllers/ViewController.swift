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
    
    var separatorColor: UIColor?
    var sectionIndexColor: UIColor?
    var sectionIndexBackgroundColor: UIColor?
    
    
    
    
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
        cell.backgroundView?.backgroundColor = UIColor(red: CGFloat(someCrayon.red), green:CGFloat(someCrayon.green), blue: CGFloat(someCrayon.blue), alpha: CGFloat(someCrayon.blue))
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.clear
        cell.selectedBackgroundView = backgroundView
        
        
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

//for color in crayon {
//    cell.backgroundColor = UIColor()
//}
