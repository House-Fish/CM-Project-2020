//
//  ViewController.swift
//  CM Project (Draft 1)
//
//  Created by Jia Yu Lee on 13/8/20.
//  Copyright © 2020 Jia Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sideMenuButton: UIButton!
    
    var mysideMenu2 = true
    
    let def = UserDefaults.standard

    
    @IBOutlet weak var label_name: UILabel!
    @IBAction func sideMenu(_ sender: Any) {
        if (mysideMenu2) {
            leadingConst.constant = 0
            
            UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseIn, animations: {
                self.view.layoutIfNeeded()
                self.sideMenuButton.isHidden = true

            })
        }
        mysideMenu2 = !mysideMenu2
    }
    
    @IBAction func sideMenuBackHome(_ sender: Any) {
        if mysideMenu2 == false {
            leadingConst.constant = 415
            
            UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseIn, animations: {
                self.view.layoutIfNeeded()

            })
        }
        mysideMenu2 = !mysideMenu2
        self.sideMenuButton.isHidden = false

    }
    
    @IBOutlet weak var leadingConst: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle { return .lightContent }
    
    override func viewDidAppear(_ animated: Bool) {
         if let name = def.string(forKey: "UserName") {
             label_name.text = "Welcome,\n\(name)"
         }
         else {
             label_name.text = "Welcome,\nUser"
         }
     }

}
