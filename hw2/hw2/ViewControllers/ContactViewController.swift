//
//  ContactViewController.swift
//  Lesson2
//
//  Created by dn on 02.07.2022.
//

import UIKit



class ContactViewController: UIViewController {
    @IBOutlet weak var backBarButtonItem: UIBarButtonItem!
    
    @IBOutlet weak var ContactUIImageView: UIImageView!
    
    @IBOutlet weak var nameUILabel: UILabel!
    
    @IBOutlet weak var phoneUILabel: UILabel!
    
    var contactName: String?
    var contactPhone: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeCircleImage()
        nameUILabel.text = contactName
        phoneUILabel.text = contactPhone
        
    }
    
    @IBAction func backButtonDidTap(_ sender: Any) {
        dismiss(animated: true)
    }
    
    func makeCircleImage(){
        ContactUIImageView.layer.borderWidth = 1
        ContactUIImageView.layer.masksToBounds = false
        ContactUIImageView.layer.borderColor = UIColor.black.cgColor
        ContactUIImageView.layer.cornerRadius = ContactUIImageView.frame.height/2
        ContactUIImageView.clipsToBounds = true
    }
}
