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
    
    var shuffleZonesSwitch:UISwitch!
    var hostApdSecuritySwitch:UISwitch!
    var streetPassCycleTimeTextField:UITextField!
    var authenticationList:NSArray!
    
    struct SectionNames {
        static var EDITABLE = 0
        static var ADD_MAC = 1
        static var READ_ONLY = 2
        static var UPDATE = 3
    }

    public var piPassConfig:PiPassConfig!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        self.authenticationList = self.piPassConfig.authenticationList()
    }
    
    func updatePiPassConfig() {
        
    }
    
    func setupEditableSection(indexPath:NSIndexPath) -> UITableViewCell{
        var tableViewCell:SettingsTableViewCell = SettingsTableViewCell(title: "", detail: "", content: "", enabled: true)
        if(indexPath.row == 0) {
            tableViewCell = SettingsTableViewCell(title: "StreetPass Cycle Time", detail: "Minutes", content: self.piPassConfig.cycleMinutes, enabled: true)
            self.streetPassCycleTimeTextField = tableViewCell.textField
        } else if(indexPath.row == 1) {
            var enabled = false
            if let _ = self.piPassConfig.shuffle {
                enabled = true
            }
            tableViewCell = SettingsTableViewCell(title: "Shuffle Zones", detail: nil, enabled: enabled)
            self.shuffleZonesSwitch = tableViewCell.toggleSwitch
        } else if(indexPath.row == 2) {
            var enabled = false
            if let _ = self.piPassConfig.hostapdSecurity {
                enabled = true
            }
            tableViewCell = SettingsTableViewCell(title: "Hostapd Security", detail: nil, enabled: enabled)
            self.hostApdSecuritySwitch = tableViewCell.toggleSwitch
        }
        
        return tableViewCell
    }
    
    func setupReadOnlySection(indexPath:NSIndexPath) -> UITableViewCell {
        var tableViewCell:SettingsTableViewCell = SettingsTableViewCell(title: "", detail: "", content: "", enabled: true)
        if(indexPath.row == 0) {
            tableViewCell = SettingsTableViewCell(title: "PiPass DB Key", detail: nil, content: self.piPassConfig.gsxKey, enabled: false)
        } else if(indexPath.row == 1) {
            tableViewCell = SettingsTableViewCell(title: "PiPass DB Worksheet", detail: nil, content: self.piPassConfig.gsxWorksheet, enabled: false)
        } else if(indexPath.row == 2) {
            tableViewCell = SettingsTableViewCell(title: "Hostapd Driver", detail: "Default: nl80211", content: self.piPassConfig.driver, enabled: false)
        } else if(indexPath.row == 3) {
            tableViewCell = SettingsTableViewCell(title: "Dashboard Path", detail: "Default: /var/www/", content: self.piPassConfig.dashboard, enabled: false)
        }
        
        return tableViewCell
    }
    
    func setupAddMacSection(indexPath:NSIndexPath) -> UITableViewCell {
        let tableViewCell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "")
        
        if(indexPath.row != self.authenticationList.count) {
            tableViewCell.selectionStyle = UITableViewCellSelectionStyle.None
            tableViewCell.textLabel?.text = self.authenticationList[indexPath.row] as? String
        } else {
            tableViewCell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
            tableViewCell.textLabel?.text = "Add a 3DS"
        }
        
        
        return tableViewCell
    }
    
//MARK: UITableView delegate/datasource
    
    override public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == SectionNames.EDITABLE) {
            return 3
        } else if(section == SectionNames.READ_ONLY) {
            return 4
        } else if(section == SectionNames.ADD_MAC) {
            return self.authenticationList.count + 1
        }
        
        return 1;
    }
    
    override public func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3;
    }
    
    override public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if(indexPath.section == SectionNames.EDITABLE) {
            return setupEditableSection(indexPath)
        } else if(indexPath.section == SectionNames.READ_ONLY) {
            return setupReadOnlySection(indexPath)
        } else if(indexPath.section == SectionNames.ADD_MAC) {
            return setupAddMacSection(indexPath)
        }
        
        return UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "");
    }
    
    override public func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        if(indexPath.section == SectionNames.ADD_MAC) {
            
        }
    }

}
