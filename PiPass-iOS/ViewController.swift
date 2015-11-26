//
//  ViewController.swift
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/22/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

import UIKit
import MBProgressHUD

class ViewController: UITableViewController {
    
    let ipAddress = "10.0.1.13"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        handleTapAction(indexPath)
    }
    
    func handleTapAction(indexPath:NSIndexPath) {
        
        if(indexPath.section == 0) {
            if(indexPath.row == 0) {
                startPiPass()
            } else if(indexPath.row == 1) {
                stopPiPass()
            } else if(indexPath.row == 2) {
                piPassSettings()
            }
        } else {
            if(indexPath.row == 0) {
                restartNetwork()
            } else if(indexPath.row == 1) {
                restartPi()
            } else if(indexPath.row == 2) {
                shutdownPi()
            }
        }
    }

    
    func startPiPass() {
        MBProgressHUD.showHUDAddedTo(self.view, animated: true)
        GetStartPiPass.doApiCall(ipAddress, success: { () -> Void in
            MBProgressHUD.hideHUDForView(self.view, animated: true)
            }) { () -> Void in
                MBProgressHUD.hideHUDForView(self.view, animated: true)
        }
    }
    
    func stopPiPass() {
        MBProgressHUD.showHUDAddedTo(self.view, animated: true)
        GetStopPiPass.doApiCall(ipAddress, success: { () -> Void in
            MBProgressHUD.hideHUDForView(self.view, animated: true)
            }) { () -> Void in
                MBProgressHUD.hideHUDForView(self.view, animated: true)
        }
    }
    
    func piPassSettings() {
        MBProgressHUD.showHUDAddedTo(self.view, animated: true)
        GetPiPassConfig.doApiCall(ipAddress, success: { (config:PiPassConfig) -> Void in
            MBProgressHUD.hideHUDForView(self.view, animated: true)
            }) { () -> Void in
                MBProgressHUD.hideHUDForView(self.view, animated: true)
        }
    }
    
    func restartNetwork() {
        MBProgressHUD.showHUDAddedTo(self.view, animated: true)
        GetRestartNetwork.doApiCall(ipAddress, success: { () -> Void in
            MBProgressHUD.hideHUDForView(self.view, animated: true)
            }) { () -> Void in
                MBProgressHUD.hideHUDForView(self.view, animated: true)
        }
    }
    
    func restartPi() {
        MBProgressHUD.showHUDAddedTo(self.view, animated: true)
        GetRestartPi.doApiCall(ipAddress, success: { () -> Void in
            MBProgressHUD.hideHUDForView(self.view, animated: true)
            }) { () -> Void in
                MBProgressHUD.hideHUDForView(self.view, animated: true)
        }
    }
    
    func shutdownPi() {
        MBProgressHUD.showHUDAddedTo(self.view, animated: true)
        GetShutdownPi.doApiCall(ipAddress, success: { () -> Void in
            MBProgressHUD.hideHUDForView(self.view, animated: true)
            }) { () -> Void in
                MBProgressHUD.hideHUDForView(self.view, animated: true)
        }
    }

}

