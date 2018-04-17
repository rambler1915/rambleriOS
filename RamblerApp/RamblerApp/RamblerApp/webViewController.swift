//
//  webViewController.swift
//  RamblerApp
//
//  Created by Austin Stephens on 2/28/18.
//  Copyright © 2018 Austin Stephens. All rights reserved.
//

import UIKit
import WebKit

class webViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    var allowsMagnification = true
    var allowsBackForwardNavigationGestures = true
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "https://transyrambler.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigationxxxa
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
