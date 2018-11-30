//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var allCrayonColors = Crayon.allTheCrayons

    @IBOutlet weak var myCrayonTableView: UITableView!
    override func viewDidLoad() {
    super.viewDidLoad()
        
        myCrayonTableView.dataSource = self
        myCrayonTableView.delegate = self
    
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let selectedRow = myCrayonTableView.indexPathForSelectedRow, let detailedViewInformations = segue.destination as? DetailedViewController else {return}
        let choiceColor = allCrayonColors[selectedRow.row]
        detailedViewInformations.color = choiceColor
        let backgroundColorToDisplay = UIColor.init(displayP3Red: CGFloat(choiceColor.red)/255, green: CGFloat(choiceColor.green)/255, blue: CGFloat(choiceColor.blue)/255, alpha: 1.0)
       detailedViewInformations.view.backgroundColor = backgroundColorToDisplay
    
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allCrayonColors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myCrayonTableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        
        let color = allCrayonColors[indexPath.row]
        cell.textLabel?.text = color.name
        cell.detailTextLabel?.text = color.hex
        
        let disPlayColor = UIColor.init(displayP3Red: CGFloat(color.red)/255, green: CGFloat(color.green)/255, blue: CGFloat(color.blue)/255, alpha:1)
        cell.backgroundColor = disPlayColor
        return cell
    }
}
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    }







