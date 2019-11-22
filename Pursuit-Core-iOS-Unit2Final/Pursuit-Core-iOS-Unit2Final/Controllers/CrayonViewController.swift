//
//  CrayonViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Maitree Bain on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var crayons = [Crayon]()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        Crayon.singleCrayon().description
        
    }
    


}

extension CrayonViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        
        
        return cell
    }


}
