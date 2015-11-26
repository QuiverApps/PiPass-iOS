//
//  GetBaseStringRequest.swift
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/26/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

import Alamofire

public class GetBaseStringRequest: NSObject {
    public static func doApiCall(address:String,success:() -> Void, failure:() -> Void) {
        Alamofire.request(.GET, address).responseString { response in
            
            if(response.result.isSuccess) {
                success()
            } else {
                failure()
            }
        }
    }
}
