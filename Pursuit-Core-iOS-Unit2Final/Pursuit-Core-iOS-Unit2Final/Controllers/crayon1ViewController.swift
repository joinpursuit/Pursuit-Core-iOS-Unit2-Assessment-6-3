//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class crayon1ViewController: UIViewController {

    private var crayons = [Crayon]()
    //var colors = [Color(name: "Almond", uiColor:UIColor.init(displayP3Red: 239, green: 222, blue: 205, alpha: 0) ),
//                  Color(name: "Antique Brass", uiColor: UIColor.red ),
//                  Color(name: "Apricot", uiColor: UIColor.red ),
//                  Color(name: "Aquamarine", uiColor: UIColor.red ),
//                  Color(name: "Asparagus", uiColor: UIColor.red ),
//                  Color(name: "Atomic Tangerine", uiColor: UIColor.red ),
//                  Color(name: "Banana Mania", uiColor: UIColor.red ),
//                  Color(name: "Beaver", uiColor: UIColor.red ),
//                  Color(name: "Bittersweet", uiColor: UIColor.red ),
//                  Color(name: "Black", uiColor: UIColor.red ),
//                  Color(name: "Blizzard Blue", uiColor: UIColor.red ),
//                  Color(name: "Blue", uiColor: UIColor.red ),
//                  Color(name: "Blue Bell", uiColor: UIColor.red ),
//                  Color(name: "Blue Gray", uiColor: UIColor.red ),
//                  Color(name: "Blue Green", uiColor: UIColor.red ),
//                  Color(name: "Blue Violet", uiColor: UIColor.red )]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
        crayons = Crayon.allTheCrayons
        
  }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? crayonSegViewController,
            let cellSelected = tableView.indexPathForSelectedRow else {fatalError("nil")}
        let crayonSelected = crayons[cellSelected.row]
        destination.crayonN = crayonSelected
    }


}
extension crayon1ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return crayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        let crayon = crayons[indexPath.row]
        cell.textLabel?.text = crayon.name
        cell.detailTextLabel?.text = crayon.hex
        cell.backgroundColor = UIColor(displayP3Red: (CGFloat(crayon.red/250)), green: CGFloat(crayon.green/250), blue: CGFloat(crayon.blue/250), alpha: 1)
        
        return cell
        
    }
//    func colorForIndex(index: Int) -> UIColor {
//        let itemCount = crayons.count - 1
//        let color = (CGFloat(index) / CGFloat(itemCount)) * 0.6
//        return UIColor(red: 1.0, green: color, blue: 0.0, alpha: 1.0)
//    }
//
//     func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell,
//                            forRowAtIndexPath indexPath: IndexPath) {
//        cell.backgroundColor = colorForIndex(index: indexPath.row)
//        return
//    }
    
}
//extension crayon1ViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//
//            cell.backgroundColor = UIColor.blue
//
//
//        }

    


