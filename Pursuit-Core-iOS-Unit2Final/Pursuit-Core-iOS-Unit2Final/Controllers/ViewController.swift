//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    
    var myCrayon = Crayon.allTheCrayons
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    TableView.dataSource = self
    TableView.delegate = self
  }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let cell = segue.destination as? crayonViewController,
        let cellSelected = TableView.indexPathForSelectedRow else {return}
        let crayonSelected = myCrayon[cellSelected.row]
        cell.crayons = crayonSelected
    }
    

}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCrayon.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let myThings = myCrayon[indexPath.row]
        guard let cell = TableView.dequeueReusableCell(withIdentifier: "crayonCell") as? crayonCell else {return UITableViewCell() }
        cell.colorName.text = myThings.name
        cell.hexLabel.text = myThings.hex
        cell.backgroundColor = UIColor.init(red: (CGFloat(myThings.red/255)), green: CGFloat(myThings.green/255), blue: CGFloat(myThings.blue/255), alpha: 1)
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    
    
    
    
}
