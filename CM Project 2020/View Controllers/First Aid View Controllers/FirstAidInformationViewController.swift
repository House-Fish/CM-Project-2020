//
//  FirstAidInformationViewController.swift
//  CM Project 2020
//
//  Created by Jia Yu Lee on 13/9/20.
//  Copyright © 2020 Jia Yu. All rights reserved.
//

import UIKit

class FirstAidInformationViewController: UIViewController {

    @IBOutlet weak var TitleText: UILabel!
    @IBOutlet weak var Description: UILabel!
    @IBOutlet weak var itemsNeeded: UILabel!
    @IBOutlet weak var symptoms: UILabel!
    @IBOutlet weak var thingsYouShouldNotDo: UILabel!
    @IBOutlet weak var casesThatCanHappen: UITextView!
    @IBOutlet weak var backgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundView.layer.cornerRadius = 15
        backgroundView.layer.masksToBounds = true

        self.TitleText.text = aidName
        
        self.Description.text = aidDescription
        
        self.itemsNeeded.text = aidItemsNeeded
        
        self.symptoms.text = aidSymptoms
        
        self.thingsYouShouldNotDo.text = aidnonos
        
        self.casesThatCanHappen.text = cases
    }
}
