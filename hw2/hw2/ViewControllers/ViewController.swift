//
//  ViewController.swift
//  Lesson2
//
//  Created by dn on 30.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        warningLabel.isHidden = true
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @IBAction func buttonDidTap(_ sender: Any) {
        guard let phone = phoneTextField.text else { return }
        
        if phone.starts(with: "89087"){
            guard let contactsVC = storyboard?.instantiateViewController( withIdentifier: "ContactsTableViewController") else {return }
            navigationController?.pushViewController(contactsVC, animated: true)
        }
        else{
            guard let errorVC = storyboard?.instantiateViewController(withIdentifier: "ErrorViewController") else { return }
            present(errorVC, animated: true)
            
            phoneTextField.text = nil
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        phoneTextField.text = nil
    }
    
}

