//
//  ViewController.swift
//  UserDefaultsExploration
//
//  Created by Hafizh Mo on 11/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchView: UISwitch!
    let switchKey = "switchIsOn"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let isOn = UserDefaults.standard.switchIsOn
        updateBackground(isOn: isOn)
    }


    @IBAction func switchToggled(_ sender: UISwitch) {
        UserDefaults.standard.switchIsOn = sender.isOn
        updateBackground(isOn: sender.isOn)
    }
    
    private func updateBackground(isOn: Bool){
        view.backgroundColor = isOn ? .orange : .darkGray
        switchView.isOn = isOn
    }
}

