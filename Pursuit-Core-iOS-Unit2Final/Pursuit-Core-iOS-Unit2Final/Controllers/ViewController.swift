//
//  ViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alex Paul on 11/15/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    var crayons = Crayon.allTheCrayons //variable holding my array of crayons
    
    @IBOutlet weak var crayonTableView: UITableView!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    crayonTableView.dataSource = self   //just cause you have to
    crayonTableView.delegate = self //you have to do this too
   
  }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailViewController,
            let cellSelected = crayonTableView.indexPathForSelectedRow else { return }
        let crayonSelected = crayons[cellSelected.row]
        destination.crayonReference = crayonSelected
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count    //this func asks how many rows do i want? the same number as my number of colors
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let crayonCell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        //we're setting up our individual crayon row cells
        
        //we have to get the crayon info from our model
        let crayonsInfoSet = crayons[indexPath.row]
        
        crayonCell.textLabel?.text = crayonsInfoSet.name
        crayonCell.detailTextLabel?.text = crayonsInfoSet.hex
       // crayonCell.textLabel?.backgroundColor = 
        
        return crayonCell
    }
}

extension ViewController: UITableViewDelegate {
    
}
