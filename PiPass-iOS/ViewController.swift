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
        
        
        GetCurrentZoneEndTime.doApiCall("10.0.1.13", success: { (zoneEndTime:CurrentZoneEndTime) -> Void in
            NSLog("RESPONSE")
            }) { () -> Void in
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

