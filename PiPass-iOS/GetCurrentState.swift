//
//  GetCurrentState.swift
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/22/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

import Alamofire
import Mantle

public class GetCurrentState: NSObject {
    public static func doApiCall(rpiAddress:String, success:(CurrentState) -> Void, failure:() -> Void) {
        
        let address = String(format: Constants.JsonEnpoints.CURRENT_STATE, arguments: [rpiAddress])
        
        Alamofire.request(.GET, address)
            .responseJSON { response in
                
                var currentState:CurrentState = CurrentState()
                
                if(response.result.isSuccess) {
                    if let responseValue = response.result.value {
                        let array = responseValue as! NSArray
                        
                        if(array.count > 0) {
                            currentState = CurrentState.deserializeObjectFromJSON(array[0] as! [NSObject : AnyObject]) as! CurrentState
                        }
                    
                        success(currentState)
                    }
                } else {
                    failure()
                }
        }
    }
}
