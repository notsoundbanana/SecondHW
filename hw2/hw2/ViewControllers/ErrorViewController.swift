//
//  ErrorViewController.swift
//  Lesson2
//
//  Created by dn on 01.07.2022.
//

import UIKit

class ErrorViewController: UIViewController {
    
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var backBarButtonItem: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        warningLabel.isHidden = false
        warningLabel.textColor = .systemRed
        warningLabel.text = "Try again"
    }
    
    @IBAction func backButtonDidTap(_ sender: Any) {
        dismiss(animated: true)
    }
}
