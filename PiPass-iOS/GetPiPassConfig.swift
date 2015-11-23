//
//  GetPiPassConfig.swift
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/22/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

import Alamofire
import Mantle

public class GetPiPassConfig: NSObject {
    public static func doApiCall(rpiAddress:String, success:(PiPassConfig) -> Void, failure:() -> Void) {
        
        let address = String(format: Constants.JsonEnpoints.PIPASS_CONFIG, arguments: [rpiAddress])
        
        Alamofire.request(.GET, address)
            .responseJSON { response in
                
                var piPassConfig:PiPassConfig = PiPassConfig()
                
                if(response.result.isSuccess) {
                    if let responseValue = response.result.value {
                        let JSON = responseValue as! [NSObject : AnyObject]
                        piPassConfig = PiPassConfig.deserializeObjectFromJSON(JSON) as! PiPassConfig
                        
                        success(piPassConfig)
                    }
                } else {
                    failure()
                }
        }
    }
}