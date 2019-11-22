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
    
    var crayonColors = [Crayon] () {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        loadData()
    }
    
    func loadData() {
        crayonColors = Crayon.allTheCrayons
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayonColors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        let color = crayonColors[indexPath.row]
        cell.textLabel?.text = color.name
        cell.detailTextLabel?.text = color.hex
        return cell
    }
}


//    var animals = [ZooAnimal]() {
//        didSet { //property observer - want automatically reload tableview
//            tableView.reloadData()
//        }
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        tableView.dataSource = self
//        loadData()
//    }
//
//    func loadData() {
//        animals = ZooAnimal.zooAnimals
//    }
//
//
//}
//
//extension BasicAnimalCellController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return animals.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////        this is for custom cells
////        let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath)
//
//        //this is using a default cell
//
//        let cell = UITableViewCell()
//
//        // get current animal
//        let animal = animals[indexPath.row]
//
//        // configure cell to be a "subtitle"
//        cell.imageView?.image = UIImage(named: animal.imageNumber.description) // gives us String instead of Intr
//        cell.textLabel?.text = animal.name
//        cell.detailTextLabel?.text = animal.origin
//        return cell
//    }
