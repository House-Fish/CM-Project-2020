//
//  DisasterInfoViewController.swift
//  CM Project (Draft 1)
//
//  Created by Jia Yu Lee on 31/8/20.
//  Copyright © 2020 Jia Yu. All rights reserved.
//

import UIKit

var myInfo = "Banana"
var mysideMenu = true

class DisasterViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Declaring Items
    @IBOutlet weak var sideMenuButton: UIButton!
    
    @IBOutlet weak var leadingConst: NSLayoutConstraint!
    
    @IBOutlet weak var tableView: UITableView!

    //Side Menu Button is Opened out -> Move into Screen
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
    
    //Side Menu Button to be Closed -> Move off Screen
    @IBAction func sideMenuBackDisaster(_ sender: Any) {
            if mysideMenu == false{
                leadingConst.constant = 417
                
                UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseIn, animations: {
                    self.view.layoutIfNeeded()
                })
            }
            self.sideMenuButton.isHidden = false
            mysideMenu = !mysideMenu
        }

    //Running the Override Func
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.layer.cornerRadius = 15
        
        tableView.layer.masksToBounds = true
        
        self.sideMenuButton.isHidden = false
        
        tableView.delegate = self
        
        tableView.dataSource = self
    
        fetchPostData{ [weak self] result in
            switch result {
                
            case .failure(let error):
                print(error)
            case .success(let disaster):
                self?.listofDisasters = disaster
                
            }
        }
    }
    
    //Calling onto the Array of Information
    var listofDisasters = [DisasterDetail]() {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
    
            }
        }
    }
    //Table View Information -> number of sections, rows, information in cells and when clicked
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listofDisasters.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let disaster = listofDisasters[indexPath.row]
                
        cell.textLabel?.text = disaster.fields.name
        cell.detailTextLabel?.text = ("Status: \((disaster.fields.status).capitalizingFirstLetter())")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        myInfo = listofDisasters[indexPath.row].fields.url
        
        performSegue(withIdentifier: "showdetail", sender: self)
    }
    
}


extension String {
    func capitalizingFirstLetter() -> String {
      return prefix(1).uppercased() + self.lowercased().dropFirst()
    }

    mutating func capitalizeFirstLetter() {
      self = self.capitalizingFirstLetter()
    }
}
