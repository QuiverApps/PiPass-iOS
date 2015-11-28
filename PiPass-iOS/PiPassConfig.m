//
//  PiPassConfig.m
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/22/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

#import "PiPassConfig.h"

@implementation PiPassConfig

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"cycleMinutes":@"STREETPASS_CYCLE_MINUTES",
             @"shuffle":@"PIPASS_SHUFFLE",
             @"gsxKey":@"GSX_KEY",
             @"gsxWorksheet":@"GSX_WORKSHEET",
             @"hostapdSecurity":@"HOSTAPD_SECURITY",
             @"authentication":@"AUTHENTICATION",
             @"driver":@"HOSTAPD_DRIVER",
             @"dashboard":@"DASHBOARD"
             };
}

- (NSArray *)authenticationList {
    if(self.authentication.length) {
        return [self.authentication componentsSeparatedByString:@"\n"];
    }
    
    return [[NSArray alloc] init];
}
@end
