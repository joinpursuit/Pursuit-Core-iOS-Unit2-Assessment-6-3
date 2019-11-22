//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var colours: [Crayon] = []
    
  override func viewDidLoad() {
    super.viewDidLoad()
    setUp()
    tableView.dataSource = self
    tableView.delegate = self
  }

    private func setUp(){
        colours = Crayon.allTheCrayons
    }
    
    @IBAction func bringingBackTheColour(from segue: UIStoryboardSegue){
        
    }

}

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

extension TableViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newStoryboard = UIStoryboard(name: "SecondStoryboard", bundle: nil)
        let colourVC = newStoryboard.instantiateViewController(withIdentifier: "colourViewController") as! ColourViewController
        colourVC.colour = colours[indexPath.row]
        navigationController?.pushViewController(colourVC, animated: true)
    }
}
