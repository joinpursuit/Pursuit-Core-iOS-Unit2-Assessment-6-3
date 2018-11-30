//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {
    
    @IBOutlet weak var crayonTableView: UITableView!
    
    private var crayons = Crayon.allTheCrayons {
        didSet{
            crayonTableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        crayonTableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = crayonTableView.indexPathForSelectedRow,
            let CrayonDetailViewController = segue.destination as? CrayonDVC
            else { fatalError("something no bueno happened @ indexPath, crayonDVC is nil")}
            let crayon = crayons[indexPath.row]
        CrayonDetailViewController.crayon = crayon
    }
}


extension CrayonViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = crayonTableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        cell.textLabel?.text = crayons[indexPath.row].name
        cell.detailTextLabel?.text = crayons[indexPath.row].hex
        cell.backgroundColor = UIColor.init(red: CGFloat(crayons[indexPath.row].red)/255, green: CGFloat(crayons[indexPath.row].green)/255, blue: CGFloat(crayons[indexPath.row].blue)/255, alpha: 1)
        return cell
    }
}

