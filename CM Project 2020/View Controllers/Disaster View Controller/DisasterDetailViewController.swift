//
//  DisasterDetailViewController.swift
//  CM Project (Draft 1)
//
//  Created by Jia Yu Lee on 11/9/20.
//  Copyright © 2020 Jia Yu. All rights reserved.
//

import UIKit
import WebKit

class DisasterDetailViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!
        
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "\(myInfo)")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true

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
