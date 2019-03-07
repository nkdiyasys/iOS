//
//  ViewController.swift
//  FBWebView
//
//  Created by Nithin on 07/03/19.
//  Copyright © 2019 Nithin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate {
    @IBOutlet weak var fbWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fbWebView.loadRequest(URLRequest(url: URL(string: "https://www.facebook.com/")!))
        fbWebView.delegate = self
    }

    @IBAction func logggout(_ sender: Any) {
        let storage = HTTPCookieStorage.shared
        for cookie in storage.cookies ?? [] {
            let domainName = cookie.domain
            let domainRange: NSRange? = (domainName as NSString?)?.range(of: "facebook")
            if (domainRange?.length ?? 0) > 0 {
                if let cookie = cookie as? HTTPCookie {
                    storage.deleteCookie(cookie)
                }
            }
        }
                fbWebView.loadRequest(URLRequest(url: URL(string: "https://www.facebook.com/")!))
    }
    
}

