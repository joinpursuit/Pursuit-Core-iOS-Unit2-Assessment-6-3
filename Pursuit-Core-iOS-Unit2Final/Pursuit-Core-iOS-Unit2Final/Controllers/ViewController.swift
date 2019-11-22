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
    
    var crayons = [Crayon]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        tableView.dataSource = self
        
    }
    
    func loadData() {
        crayons = Crayon.allTheCrayons
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailViewController = segue.destination as? DetailViewController, let indexPath = tableView.indexPathForSelectedRow else {
            fatalError("segue not set up correctly")
        }
        let crayon = crayons[indexPath.row]
        detailViewController.crayon = crayon
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        let crayon = crayons[indexPath.row]
        let crayonColor = UIColor.init(red: CGFloat(crayon.red / 255.0 ), green: CGFloat(crayon.green / 255.0 ), blue: CGFloat(crayon.blue / 255.0), alpha: 1)
        
        
        cell.textLabel?.text = crayon.name
        cell.detailTextLabel?.text = crayon.hex

        cell.backgroundColor = crayonColor 
        
        
        return cell
    }
}
