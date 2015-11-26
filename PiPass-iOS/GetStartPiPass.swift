//
//  GetStartPiPass.swift
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/22/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

import Alamofire

public class GetStartPiPass: NSObject {
    public static func doApiCall(rpiAddress:String) {
        
        let address = String(format: Constants.PhpEndPoints.START, arguments: [rpiAddress])
        
        Alamofire.request(.GET, address)
    }
}
