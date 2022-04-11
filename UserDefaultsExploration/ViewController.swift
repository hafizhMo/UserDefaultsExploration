//
//  ViewController.swift
//  UserDefaultsExploration
//
//  Created by Hafizh Mo on 11/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stageField: UITextField!
    @IBOutlet weak var roleField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stageField.text = UserDefaults.standard.signInMember?.stageName
        roleField.text = UserDefaults.standard.signInMember?.role
    }

    @IBAction func submitBtn(_ sender: UIButton) {
        let stageName = stageField.text ?? ""
        let role = roleField.text ?? ""
        
        let member = Member(stageName: stageName, role: role)
        UserDefaults.standard.signInMember = member
    }
}

