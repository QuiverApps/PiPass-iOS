//
//  GetStopPiPass.swift
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/22/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

import Alamofire

public class GetStopPiPass: NSObject {
    public static func doApiCall(rpiAddress:String,success:() -> Void, failure:() -> Void) {
        
        let address = String(format: Constants.PhpEndPoints.STOP, arguments: [rpiAddress])
        
        GetBaseStringRequest.doApiCall(address, success: success, failure: failure)
    }
}
