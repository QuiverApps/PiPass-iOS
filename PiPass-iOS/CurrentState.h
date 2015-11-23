//
//  CurrentState.h
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/22/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

#import "MantelModelBase.h"
#import "ChildObjectValue.h"
@interface CurrentState : MantelModelBase

@property (nonatomic, strong) ChildObjectValue *updated;
@property (nonatomic, strong) ChildObjectValue *ssid;
@property (nonatomic, strong) ChildObjectValue *mac;
@property (nonatomic, strong) ChildObjectValue *zoneDescription;

@end
