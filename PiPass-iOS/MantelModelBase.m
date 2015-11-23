//
//  MantelModelBase.m
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/22/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

#import "MantelModelBase.h"

@implementation MantelModelBase
+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{};
}

+ (id)deserializeObjectFromJSON:(NSDictionary *)jsonDictionary {
    NSError *error;
    id deserializeObject = [MTLJSONAdapter modelOfClass:[self class] fromJSONDictionary:jsonDictionary error:&error];
    return deserializeObject;
}

-(NSDictionary *) dictionaryRepresentation {
    return [MTLJSONAdapter JSONDictionaryFromModel:self error:nil];
}

@end
