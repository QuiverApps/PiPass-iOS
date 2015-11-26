//
//  GetRestartNetwork.swift
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/26/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

import Alamofire

public class GetRestartNetwork: NSObject {
    public static func doApiCall(rpiAddress:String,success:() -> Void, failure:() -> Void) {
        
        let address = String(format: Constants.PhpEndPoints.RESET_NETWORK, arguments: [rpiAddress])
        
        Alamofire.request(.GET, address).responseString { response in
            
            if(response.result.isSuccess) {
                success()
            } else {
                failure()
            }
        }
    }
}
