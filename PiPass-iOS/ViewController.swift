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
        
        
        GetCurrentState.doApiCall("10.0.1.13", success: { (currentState:CurrentState) -> Void in
            //code
            NSLog("%@",currentState.mac.value)
            NSLog("%@",currentState.ssid.value)
            NSLog("%@",currentState.updated.value)
            NSLog("%@",currentState.zoneDescription.value)

            }) { () -> Void in
                //code
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

