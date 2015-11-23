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
        static var CURRENT_STATE = "http://%@/assets/json/current_state.json"
        static var CURRENT_LIST = "http://%@/assets/json/current_list.json"
        static var CURRENT_ZONE_ENDTIME = "http://%@/assets/json/current_zone_end_time.json"
        static var PIPASS_CONFIG = "http://%@/assets/json/pipass_config.json"
        static var PIPASS_VERSION = "http://%@/assets/json/pipass_version.json"
    }
    
    struct PhpEndPoints {
        static var ADVANCE = "http://%@/assets/php/advance.php"
        static var LOGS = "http://%@/assets/php/pipass_logs.php"
        static var REFRESH = "http://%@/assets/php/refresh.php"
        static var RESET_NETWORK = "http://%@/assets/php/reset_network.php"
        static var RESTART_PI = "http://%@/assets/php/restart_pi.php"
        static var SETTINGS = "http://%@/assets/php/settings.php"
        static var SHUTDOWN_PI = "http://%@/assets/php/shutdown_pi.php"
        static var START = "http://%@/assets/php/start.php"
        static var STOP = "http://%@/assets/php/stop.php"
        static var UPDATE = "http://%@/assets/php/update.php"
    }
}
