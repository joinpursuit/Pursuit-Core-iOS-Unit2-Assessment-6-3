//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var colors = Crayon.allTheCrayons
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
      
       tableView.dataSource = self
       tableView.delegate = self
        

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        self.present(secondVC, animated:true, completion:nil)
   }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let theColors = colors[indexPath.row]
       
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorTableViewCell", for: indexPath) as? ColorTableViewCell else {return UITableViewCell()}
        cell.colorName.text = theColors.name
        cell.colorhex.text = theColors.hex
        cell.backgroundColor = UIColor(displayP3Red: (CGFloat(theColors.red/250)), green: CGFloat(theColors.green/250), blue: CGFloat(theColors.blue/250), alpha: 1)
        return cell
        
      }
    }

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "secondDetail") as? DetailViewController else { return}
        vc.modalPresentationStyle = .overCurrentContext
        vc.colors = colors[indexPath.row]
            present(vc, animated: true, completion: nil)
    }
}
