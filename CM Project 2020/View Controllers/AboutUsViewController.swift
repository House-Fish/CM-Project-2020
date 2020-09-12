//
//  AboutUsViewController.swift
//  CM Project 2020
//
//  Created by Jia Yu Lee on 12/9/20.
//  Copyright © 2020 Jia Yu. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController {
    
    @IBOutlet weak var sideMenuButton: UIButton!
    
    var mysideMenu = true
    let defaults = UserDefaults.standard

    @IBAction func sideMenu(_ sender: Any) {
        if (mysideMenu) {
            leadingConst.constant = 0
            
            UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseIn, animations: {
                self.view.layoutIfNeeded()
                self.sideMenuButton.isHidden = true

            })
        }
        mysideMenu = !mysideMenu
    }
    
    @IBAction func sideMenuBackDisaster(_ sender: Any) {
            if mysideMenu == false{
                leadingConst.constant = 417
                
                UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseIn, animations: {
                    self.view.layoutIfNeeded()
                })
            }
            mysideMenu = !mysideMenu
            self.sideMenuButton.isHidden = false

        }
    
    @IBOutlet weak var txtField: UITextField!
    
    @IBAction func updateName(_ sender: Any) {
        let new_name = (txtField.text) ?? ""
        if new_name != "" {
            defaults.set(new_name, forKey: "UserName")
        }
    }
    
    @IBAction func dismissKeyboard(_ sender: UITextField) {
        sender.resignFirstResponder()

    }
    
    
    @IBOutlet weak var leadingConst: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
