//
//  GetCurrentZoneEndTime.swift
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/22/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

import Alamofire
import Mantle

public class GetCurrentZoneEndTime: NSObject {
    public static func doApiCall(rpiAddress:String, success:(CurrentZoneEndTime) -> Void, failure:() -> Void) {
        
        let address = String(format: Constants.JsonEnpoints.CURRENT_ZONE_ENDTIME, arguments: [rpiAddress])
        
        Alamofire.request(.GET, address)
            .responseJSON { response in
                
                var zoneEndTime:CurrentZoneEndTime = CurrentZoneEndTime()
                
                if(response.result.isSuccess) {
                    if let responseValue = response.result.value {
                        let JSON = responseValue as! [NSObject : AnyObject]
                        zoneEndTime = CurrentZoneEndTime.deserializeObjectFromJSON(JSON) as! CurrentZoneEndTime
                        
                        success(zoneEndTime)
                    }
                } else {
                    failure()
                }
        }
    }
}
