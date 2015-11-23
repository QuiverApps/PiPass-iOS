//
//  ChildObjectValue.m
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/22/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

#import "ChildObjectValue.h"

@implementation ChildObjectValue
+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{@"value":@"$t"};
}
@end
