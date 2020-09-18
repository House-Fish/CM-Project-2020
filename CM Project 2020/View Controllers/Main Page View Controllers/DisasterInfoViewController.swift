//
//  DisasterInfoViewController.swift
//  CM Project (Draft 1)
//
//  Created by Jia Yu Lee on 31/8/20.
//  Copyright © 2020 Jia Yu. All rights reserved.
//

import UIKit

class DisasterInfoViewController: UIViewController {

    @IBOutlet weak var titleName: UILabel!
    @IBOutlet weak var subtitileName: UILabel!
    @IBOutlet weak var descriptionName: UILabel!
    @IBOutlet weak var disasterInfomation: UITextView!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.layer.cornerRadius = 15
        backgroundView.layer.masksToBounds = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.imageView.image = UIImage(named: selectedImage)

        self.titleName.text = nameOfTopic
        self.subtitileName.text = nameOfSubtitle
        self.descriptionName.text = nameOfDescription
        self.disasterInfomation.text = "Things to Bring: \n\(thingsToBring) \n\n Actions Needed:\n\(actionsNeeded) \n\n Emergency Numbers: \n\(emergencyNumbers) \n\n Disasters: \n\(disasters)"
    }
}
