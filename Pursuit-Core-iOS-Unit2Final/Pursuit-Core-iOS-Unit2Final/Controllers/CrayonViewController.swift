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
        crayons = Crayon.singleCrayon()
    }
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepareForSegue")
    
    guard let detailViewController = segue.destination as? DetailViewController else {
        fatalError("no destination")
    }
    }

}

extension CrayonViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        
        cell.textLabel?.text = Crayon.singleCrayon()
        
        return cell
    }


}
