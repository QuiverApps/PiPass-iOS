//
//  SettingsTableViewController.swift
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/26/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

import UIKit
import MBProgressHUD

public class SettingsTableViewController: UITableViewController {
    
    @IBOutlet weak var shuffleZonesSwitch:UISwitch!
    @IBOutlet weak var hostApdSecuritySwitch:UISwitch!

    @IBOutlet weak var streetPassCycleTimeTextField:UITextField!
    @IBOutlet weak var piPassDBKeyTextField:UITextField!
    @IBOutlet weak var piPassDBWorksheetTextField:UITextField!
    @IBOutlet weak var dsAuthenticationTextField:UITextField!
    @IBOutlet weak var hostApdDriverTextField:UITextField!
    @IBOutlet weak var dashboardPathTextField:UITextField!

    public var piPassConfig:PiPassConfig!
    
    override public func viewDidLoad() {
        NSLog("LOAD");
    }

}
