//
//  DonationsWebViewController.swift
//  CM Project 2020
//
//  Created by Jia Yu Lee on 12/9/20.
//  Copyright © 2020 Jia Yu. All rights reserved.
//

import UIKit
import WebKit

class DonationsWebViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!
        
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        let url = URL(string: "\(urlinkweb)")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
}
