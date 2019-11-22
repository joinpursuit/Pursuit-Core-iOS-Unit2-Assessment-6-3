//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    // MARK: Outlets of TableViewController
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Properties of TableViewController
    var colours: [Crayon] = []
    
    // MARK: Lifecycle Methods
  override func viewDidLoad() {
    super.viewDidLoad()
    setUp()
    tableView.dataSource = self
    tableView.delegate = self
  }

    // MARK: Helper Methods
    private func setUp(){
        colours = Crayon.allTheCrayons
    }
    
    // MARK: Other Methods
    @IBAction func bringingBackTheColour(from segue: UIStoryboardSegue){
        
    }

}

// MARK: DataSource Methods
extension TableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colours.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let xCell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        xCell.textLabel?.text = colours[indexPath.row].name
        xCell.detailTextLabel?.text = colours[indexPath.row].hex
        xCell.backgroundColor = UIColor(displayP3Red: CGFloat(colours[indexPath.row].red)/255, green: CGFloat(colours[indexPath.row].green)/255, blue: CGFloat(colours[indexPath.row].blue)/255, alpha: 1)
        return xCell
    }
}

// MARK: TableViewDelegate Methods
extension TableViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newStoryboard = UIStoryboard(name: "SecondStoryboard", bundle: nil)
        let colourVC = newStoryboard.instantiateViewController(withIdentifier: "colourViewController") as! ColourViewController
        colourVC.colour = colours[indexPath.row]
        navigationController?.pushViewController(colourVC, animated: true)
    }
}
