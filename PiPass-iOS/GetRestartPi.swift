//
//  GetRestartPi.swift
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/26/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

import Alamofire

public class GetRestartPi: NSObject {
    public static func doApiCall(rpiAddress:String,success:() -> Void, failure:() -> Void) {
        
        let address = String(format: Constants.PhpEndPoints.RESTART_PI, arguments: [rpiAddress])
        
        GetBaseStringRequest.doApiCall(address, success: success, failure: failure)
    }
}
