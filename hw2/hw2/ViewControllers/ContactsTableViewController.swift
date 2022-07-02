//
//  ContactsTableViewController.swift
//  Lesson2
//
//  Created by dn on 01.07.2022.
//

import UIKit

struct Contact{
    let name: String
    let phoneNumber: String
}
class ContactsTableViewController: UITableViewController {
    
    let contacts: [Contact] = [
        Contact(name: "Danil", phoneNumber: "89876543210"),
        Contact(name: "Jane", phoneNumber: "89998887766"),
        Contact(name: "Alsu", phoneNumber: "89991234567"),
        Contact(name: "Danil", phoneNumber: "89876543210"),
        Contact(name: "Jane", phoneNumber: "89998887766"),
        Contact(name: "Alsu", phoneNumber: "89991234567"),
        Contact(name: "Danil", phoneNumber: "89876543210"),
        Contact(name: "Jane", phoneNumber: "89998887766"),
        Contact(name: "Alsu", phoneNumber: "89991234567"),
        Contact(name: "Danil", phoneNumber: "89876543210"),
        Contact(name: "Jane", phoneNumber: "89998887766"),
        Contact(name: "Alsu", phoneNumber: "89991234567"),
        Contact(name: "Danil", phoneNumber: "89876543210"),
        Contact(name: "Jane", phoneNumber: "89998887766"),
        Contact(name: "Alsu", phoneNumber: "89991234567"),
        Contact(name: "Danil", phoneNumber: "89876543210"),
        Contact(name: "Jane", phoneNumber: "89998887766"),
        Contact(name: "Alsu", phoneNumber: "89991234567"),
        Contact(name: "Danil", phoneNumber: "89876543210"),
        Contact(name: "Jane", phoneNumber: "89998887766"),
        Contact(name: "Alsu", phoneNumber: "89991234567"),
        Contact(name: "Danil", phoneNumber: "89876543210"),
        Contact(name: "Jane", phoneNumber: "89998887766"),
        Contact(name: "Alsu", phoneNumber: "89991234567"),
        Contact(name: "Danil", phoneNumber: "89876543210"),
        Contact(name: "Jane", phoneNumber: "89998887766"),
        Contact(name: "Alsu", phoneNumber: "89991234567"),
        Contact(name: "Danil", phoneNumber: "89876543210"),
        Contact(name: "Jane", phoneNumber: "89998887766"),
        Contact(name: "Alsu", phoneNumber: "89991234567"),
        Contact(name: "Danil", phoneNumber: "89876543210"),
        Contact(name: "Jane", phoneNumber: "89998887766"),
        Contact(name: "Alsu", phoneNumber: "89991234567"),
        Contact(name: "Danil", phoneNumber: "89876543210"),
        Contact(name: "Jane", phoneNumber: "89998887766"),
        Contact(name: "Alsu", phoneNumber: "89991234567")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "ContactTableViewCell",
            for: indexPath
        ) as? ContactTableViewCell else { return UITableViewCell() }
        
        cell.nameLabel.text = contacts[indexPath.row].name
        cell.phoneLabel.text = contacts[indexPath.row].phoneNumber
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let contactVC = storyboard?.instantiateViewController( withIdentifier: "ContactViewController" ) as? ContactViewController else { return }
        
        contactVC.contactName = contacts[indexPath.row].name
        contactVC.contactPhone = contacts[indexPath.row].phoneNumber
        
        navigationController?.pushViewController(contactVC, animated: true)
    }
}
