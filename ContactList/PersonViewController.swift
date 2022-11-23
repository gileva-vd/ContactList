//
//  ViewController.swift
//  ContactList
//
//  Created by Валерия Гилева on 22.11.2022.
//

import UIKit

class PetsonViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension PetsonViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Cell index: \(indexPath.row)"
        return cell
    }
}

