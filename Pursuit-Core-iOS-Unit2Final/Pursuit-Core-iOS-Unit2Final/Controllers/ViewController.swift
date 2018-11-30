//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alfredo Barragan on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var crayons = Crayon.allTheCrayons
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
    }
        
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow,
        let detailedViewController = segue.destination as? DetailedViewController else { return }
        let colors = crayons[indexPath.row]
        detailedViewController.colors = colors
        detailedViewController.view.backgroundColor = UIColor(displayP3Red: (CGFloat(colors.red/250)), green: CGFloat(colors.green/250), blue: CGFloat(colors.blue/250), alpha: 1)
        detailedViewController.redSlider.value = Float(colors.red/250)
        detailedViewController.blueSlider.value = Float(colors.blue/250)
        detailedViewController.greenSlider.value = Float(colors.green/250)
        detailedViewController.labelForRed.text = String(Int(colors.red))
        detailedViewController.labelForBlue.text = String(Int(colors.blue))
        detailedViewController.labelForGreen.text = String(Int(colors.green))
        
        
        
        
        
        
    }
    
    
    
        
}
    
    
        

    



    extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath) as? CrayonCell else { return UITableViewCell()}
        
        let colors = crayons[indexPath.row]
        cell.crayonNameLabel.text = colors.name
        cell.crayonColorValueLabel.text = colors.hex
        cell.backgroundColor = UIColor(displayP3Red: (CGFloat(colors.red/250)), green: CGFloat(colors.green/250), blue: CGFloat(colors.blue/250), alpha: 1)
        return cell
        }
    
   
    
}


    extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }





}








