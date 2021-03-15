//
//  ViewController.swift
//  iShop
//
//  Created by Keval on 3/15/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rbCustomer: UIButton!
    @IBOutlet weak var rbAdmin: UIButton!
    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func customerClicked(_ sender: Any) {
        rbCustomer.isSelected = true
        rbAdmin.isSelected = false
    }
    
    @IBAction func admin_clicked(_ sender: Any) {
        rbAdmin.isSelected = true
        rbCustomer.isSelected = false
    }
    
    @IBAction func loginClicked(_ sender: Any) {
    }
    
}

