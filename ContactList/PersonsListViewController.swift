//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Валерия Гилева on 22.11.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    private let personsList = Person.getPersonList()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        let person = personsList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        personsList[selection].fullName
//    }


    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let detalisVC = segue.destination as? PersoneDetalisViewController else { return }
        detalisVC.person = personsList[indexPath.row]
    }
    

}
