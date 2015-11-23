//
//  PostUpdateSettings.swift
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/23/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

import Alamofire

public class PostUpdateSettings: NSObject {
    public static func doApiCall(rpiAddress:String, config:PiPassConfig,success:() -> Void, failure:() -> Void) {
        
        let address = String(format: Constants.PhpEndPoints.SETTINGS, arguments: [rpiAddress])
        
        Alamofire.request(.POST, address, parameters: config.dictionaryRepresentation() as? [String:AnyObject]).responseString { response in
            
            if(response.result.isSuccess) {
                success()
            } else {
                failure()
            }
        }
    }
}
