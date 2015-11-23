//
//  CurrentState.m
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/22/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

#import "CurrentState.h"

@implementation CurrentState

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"updated":@"updated",
             @"ssid":@"gsx$ssid",
             @"mac":@"gsx$mac",
             @"zoneDescription":@"gsx$description",
             };
}


+ (NSValueTransformer *)updatedDataJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:[ChildObjectValue class]];
}

+ (NSValueTransformer *)ssidDataJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:[ChildObjectValue class]];
}

+ (NSValueTransformer *)macDataJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:[ChildObjectValue class]];
}

+ (NSValueTransformer *)zoneDescriptionDataJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:[ChildObjectValue class]];
}


@end
