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
    
    
    // table view data
    private var allTheCrayons = [Crayon](){
        didSet {
            tableView.reloadData()
        }
    }
    
    
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    loadData()
  }

    func loadData(){
        allTheCrayons = Crayon.allTheCrayons
        
    }
    

}
// Step 2: conform to UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allTheCrayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        // get color at the current index path
        let color = allTheCrayons[indexPath.row]
        
        //configue cell
        cell.textLabel?.text = color.name
        cell.detailTextLabel?.text = color.hex
        
        //key to cell color change???
        //func colorForIndex(index: Int) -> UIColor {
           // let itemCount = tableData.count - 1
           // let color = (CGFloat(index) / CGFloat(itemCount)) * 0.6
           // return UIColor(red: 1.0, green: color, blue: 0.0, alpha: 1.0)
       // }
         
        if color.red == 0 && color.green == 0 && color.blue == 0 {
            cell.textLabel?.textColor = .white
            cell.detailTextLabel?.textColor = .white
            cell.backgroundColor = UIColor(red: CGFloat(color.red)/CGFloat(255), green: CGFloat(color.green)/CGFloat(255), blue: CGFloat(color.blue)/CGFloat(255), alpha: 0.80)
        } else {
            cell.backgroundColor = UIColor(red: CGFloat(color.red)/CGFloat(255), green: CGFloat(color.green)/CGFloat(255), blue: CGFloat(color.blue)/CGFloat(255), alpha: 0.80)
            
        }
        return cell
    }
    

}
