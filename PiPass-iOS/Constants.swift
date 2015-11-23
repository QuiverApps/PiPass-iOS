//
//  Constants.swift
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/22/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

import Foundation

struct Constants {
    struct JsonEnpoints {
        static var CURRENT_STATE = "%@/assets/json/current_state.json"
        static var CURRENT_LIST = "%@/assets/json/current_list.json"
        static var CURRENT_ZONE_ENDTIME = "%@/assets/json/current_zone_end_time.json"
        static var PIPASS_CONFIG = "%@/assets/json/pipass_config.json"
        static var PIPASS_VERSION = "%@/assets/json/pipass_version.json"
    }
    
    struct PhpEndPoints {
        static var ADVANCE = "%@/assets/php/advance.php"
        static var LOGS = "%@/assets/php/pipass_logs.php"
        static var REFRESH = "%@/assets/php/refresh.php"
        static var RESET_NETWORK = "%@/assets/php/reset_network.php"
        static var RESTART_PI = "%@/assets/php/restart_pi.php"
        static var SETTINGS = "%@/assets/php/settings.php"
        static var SHUTDOWN_PI = "%@/assets/php/shutdown_pi.php"
        static var START = "%@/assets/php/start.php"
        static var STOP = "%@/assets/php/stop.php"
        static var UPDATE = "%@/assets/php/update.php"
    }
}
