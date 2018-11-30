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
    var color = UIColor()

    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
       tableView.dataSource = self
       tableView.delegate = self
  
   
       
  }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! DetailViewController
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
        return cell
        }
    }

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
