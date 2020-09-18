//
//  DonationsViewController.swift
//  CM Project 2020
//
//  Created by Jia Yu Lee on 12/9/20.
//  Copyright © 2020 Jia Yu. All rights reserved.
//

import UIKit
var urlinkweb = "link"

class DonationsViewController: UIViewController {
    var mysideMenu = true

    @IBOutlet weak var sideMenuButton: UIButton!
    
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
    
    @IBAction func sideMenuBackAreYouSafe(_ sender: Any) {
            if mysideMenu == false{
                leadingConst.constant = 417
                
                UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseIn, animations: {
                    self.view.layoutIfNeeded()
                    self.sideMenuButton.isHidden = false
                })
            }
            mysideMenu = !mysideMenu
        }
    
    @IBOutlet weak var leadingConst: NSLayoutConstraint!
    
    
    @IBAction func redCross(_ sender: Any) {
        urlinkweb = "https://www.redcross.sg/35-local-services/international-services/215-disaster-relief.html"
    }
    
    @IBAction func mercyRelief(_ sender: Any) {
        urlinkweb = "https://www.mercyrelief.org/"
    }
    
    @IBAction func OCHA(_ sender: Any) {
        urlinkweb = "https://www.unocha.org/asia-and-pacific-roap/emergency-response#:~:text=ROAP%20provides%20the%20first%20wave,and%20their%20teams%2C%20upon%20request."
    }
    
    @IBAction func directRelief(_ sender: Any) {
        urlinkweb = "https://www.directrelief.org/"
    }
    
    @IBAction func worldRelief(_ sender: Any) {
        urlinkweb = "https://worldrelief.org/disasters/"
    }
    
    @IBAction func samaritanPurse(_ sender: Any) {
        urlinkweb = "https://www.samaritanspurse.org/what-we-do/crisis-and-disaster-response/"
    }
    
    @IBAction func globalGiving(_ sender: Any) {
        urlinkweb = "https://www.globalgiving.org/disasters/"
    }
    
    @IBAction func UNICEF(_ sender: Any) {
        urlinkweb = "https://www.unicef.org/topics/disaster-relief"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
