//
//  MantelModelBase.h
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/22/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface MantelModelBase : MTLModel <MTLJSONSerializing>
+ (id)deserializeObjectFromJSON:(NSDictionary *)jsonDictionary;
- (NSDictionary *)dictionaryRepresentation; 
@end
