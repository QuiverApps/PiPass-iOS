//
//  PiPassConfig.h
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/22/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

#import "MantelModelBase.h"

@interface PiPassConfig : MantelModelBase

@property (nonatomic, strong) NSString *cycleMinutes;
@property (nonatomic, strong) NSString *shuffle;
@property (nonatomic, strong) NSString *gsxKey;
@property (nonatomic, strong) NSString *gsxWorksheet;
@property (nonatomic, strong) NSString *hostapdSecurity;
@property (nonatomic, strong) NSString *authentication;
@property (nonatomic, strong) NSString *driver;
@property (nonatomic, strong) NSString *dashboard;
@end
