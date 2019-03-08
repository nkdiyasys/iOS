//
//  ViewController.swift
//  FBSampleSwift
//
//  Created by Nithin on 16/01/19.
//  Copyright © 2019 Nithin. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit


class ViewController: UIViewController {

    @IBAction func oneClic(_ sender: Any) {
        let fbLoginManager : FBSDKLoginManager = FBSDKLoginManager()
        fbLoginManager.loginBehavior = .web
        fbLoginManager.logOut()
        fbLoginManager.logIn(withReadPermissions: ["email"/*, "public_profile"*/], from: self) { (result, error) in
            if (error == nil){
                let fbloginresul11 : FBSDKLoginManagerLoginResult = result!
               print(fbloginresult11)
        }
        }
    }
    
    
    @IBAction func twoClick(_ sender: Any) {

        FBSDKGraphRequest(graphPath: "/AtriaSeniorLiving/albums", parameters: ["fields":"id,name,user_photos"], httpMethod: "GET").start(completionHandler: {  (connection, result, error) in
            
            
            print(result!)
        })
        
//
//        FBSDKGraphRequest(graphPath: "/1360324140777331/albums", parameters: ["fields": "id, name, source"]).start(completionHandler: { (connection, result, error) -> Void in
//
//            if (error == nil){
//                print(result!)
////                var dict = result?["data"] as! NSArray
////
////                for item in dict { // loop through data items
////
////                    if let urlString = item["source"]! {
////                        let url = NSURL(string: urlString as! String)
////                        let imageData = NSData(contentsOfURL: url!)
////                        let image = UIImage(data: imageData!)
////                        self.socialPhotoCollection.append(image!)
////
////                    }
////                }
//            }
//        })
        
        
        
//        FBSDKGraphRequest(graphPath: "me/albums", parameters: ["fields" : "id"], httpMethod: "GET").start(completionHandler: { (connection, result, error) -> Void in
//            if (error == nil)
//            {
//                let data:[String:AnyObject] = result as! [String : AnyObject]
//                print(data)
//               // self.arrdata = data["data"]?.value(forKey: "id") as! [String ]
//            }
//        })
        
//        FBSDKGraphRequest(graphPath: "/1143344792475268/albums", parameters: ["fields": "source"], httpMethod: "GET").start(completionHandler: { (connection, result1, error) -> Void in
//            print(error!)
//            if (error == nil)
//            {
//                let data1:[String:AnyObject] = result1 as! [String : AnyObject]
//                let arrdata:[String] = data1["data"]?.value(forKey: "source") as! [String ]
//                for item in arrdata
//                {
//                    let url = NSURL(string: item )
//                    let imageData = NSData(contentsOf: url! as URL)
//                    let image = UIImage(data: imageData! as Data)
//
//                }
//            }
//        })

        
//        let params = [ "height": 300, "width": 300, "redirect": false] as [String : Any]
//        let graphRequest = FBSDKGraphRequest(graphPath: "248746741832695/photos?fields=source", parameters: params, httpMethod: "GET")
//        let connection = FBSDKGraphRequestConnection()
//        connection.add(graphRequest, completionHandler: { (connection, result, error) in
//            if error == nil {
//                //print(result)
//                // let dictionary = IXON(result)
//                // print("result are **************\(dictionary)")
//            }
//        })
//        connection.start()
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
      
    }


}

