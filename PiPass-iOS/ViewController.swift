//
//  ViewController.swift
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/22/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        GetPiPassConfig.doApiCall("10.0.1.13", success: { (config:PiPassConfig) -> Void in
            
            config.cycleMinutes = "1"
            
            PostUpdateSettings.doApiCall("10.0.1.13", config: config, success: { () -> Void in
                GetStartPiPass.doApiCall("10.0.1.13")
                }, failure: { () -> Void in
                    
            })
            
            }) { () -> Void in
                
        }
        
        //GetStartPiPass.doApiCall("10.0.1.13")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

