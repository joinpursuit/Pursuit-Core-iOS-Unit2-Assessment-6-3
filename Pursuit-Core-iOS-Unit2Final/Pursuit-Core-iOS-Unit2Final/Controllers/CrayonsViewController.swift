//
//  CrayonsViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Leandro Wauters on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonsViewController: UIViewController {

    var crayons = Crayon.allTheCrayons
    
    @IBOutlet weak var crayonTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        crayonTableView.dataSource = self
        crayonTableView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = crayonTableView.indexPathForSelectedRow,
            let crayonDetailView = segue.destination as? CrayonDetailViewController else {return}
        let crayon = crayons[indexPath.row]
        crayonDetailView.crayon = crayon
        crayonDetailView.view.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red/250), green: CGFloat(crayon.green/250), blue: CGFloat(crayon.blue/250), alpha: 1)
        crayonDetailView.redSlider.value = Float(crayon.red/250)
        crayonDetailView.redLabel.text = String(crayon.red/250)
        crayonDetailView.greenSlider.value = Float(crayon.green/250)
        crayonDetailView.greenLabel.text = String(crayon.green/250)
        crayonDetailView.blueSlider.value = Float(crayon.blue/250)
        crayonDetailView.blueLabel.text = String(crayon.blue/250)
    }


}

extension CrayonsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let crayon = crayons[indexPath.row]
        let cell = crayonTableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        cell.textLabel?.text = crayon.name
        cell.detailTextLabel?.text = crayon.hex
        cell.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red/250), green: CGFloat(crayon.green/250), blue: CGFloat(crayon.blue/250), alpha: 1)
        return cell
    }
    
    
}

extension CrayonsViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
