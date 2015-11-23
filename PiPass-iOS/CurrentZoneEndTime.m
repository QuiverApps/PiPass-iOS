//
//  CurrentZoneEndTime.m
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/22/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

#import "CurrentZoneEndTime.h"

@implementation CurrentZoneEndTime
+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"zoneEndTime":@"CURRENT_ZONE_END_TIME",
             @"cycleSeconds":@"STREETPASS_CYCLE_SECONDS"
             };
}
@end
