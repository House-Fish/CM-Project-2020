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
    
    //Declare the WebView
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

    }
}
