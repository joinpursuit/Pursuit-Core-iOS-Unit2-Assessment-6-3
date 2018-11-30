//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorTableView: UITableView!
    
    var allTheColors = Crayon.allTheCrayons

    override func viewDidLoad() {
        super.viewDidLoad()
        colorTableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = colorTableView.indexPathForSelectedRow, let DisplayView = segue.destination as? DetailVC else { return }
        let color = allTheColors[indexPath.row]
        DisplayView.color = color
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allTheColors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let thingsToSet = allTheColors[indexPath.row]
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath) as? ColorCell else {return UITableViewCell()}
        
        cell.name.text = thingsToSet.name
        cell.hexValueName.text = thingsToSet.hex
        cell.backgroundColor = UIColor.init(red: CGFloat(thingsToSet.red/255), green: CGFloat(thingsToSet.green/255), blue: CGFloat(thingsToSet.blue/255), alpha: 1.0)
        
        if cell.backgroundColor == UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 1.0) {
            cell.name.textColor = .white
            cell.hexValueName.textColor = .white
        }
        return cell
    }
}

