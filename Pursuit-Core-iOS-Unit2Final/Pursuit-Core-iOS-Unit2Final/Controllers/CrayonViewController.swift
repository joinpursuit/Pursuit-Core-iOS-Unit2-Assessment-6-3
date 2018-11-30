//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {
    
    private var crayons = [Crayon]()
    
@IBOutlet weak var crayonTableView: UITableView!
    

  override func viewDidLoad() {
    super.viewDidLoad()
    crayons = Crayon.allTheCrayons
    crayonTableView.dataSource = self
   
    
  }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = crayonTableView.indexPathForSelectedRow,
            let crayonsDetailViewContoller = segue.destination as? CrayonDetailViewController else {return}
        let crayon = crayons[indexPath.row]
        crayonsDetailViewContoller.crayon = crayon
        
    }
    
}

extension CrayonViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = crayonTableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        let crayon = crayons[indexPath.row]
        cell.textLabel?.text = crayon.name
        cell.backgroundColor = UIColor(red: CGFloat(crayon.red / 255), green: CGFloat(crayon.green / 255), blue: CGFloat(crayon.blue / 255), alpha: 1)
        cell.detailTextLabel!.text = crayon.hex
        return cell
    }
    
}
