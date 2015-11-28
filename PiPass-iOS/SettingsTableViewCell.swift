//
//  SettingsTableViewCell.swift
//  PiPass-iOS
//
//  Created by Jeremy Roberts on 11/27/15.
//  Copyright © 2015 Jeremy Roberts. All rights reserved.
//

import UIKit

public class SettingsTableViewCell: UITableViewCell {
    public var titleLabel:UILabel!
    public var detailLabel:UILabel!
    private var titleDetailContainer:UIView!

    public var textField:UITextField!
    public var toggleSwitch:UISwitch!
    
    private var metrics:Dictionary<String,Int>!
    
    struct Metrics {
        static var DEFAULT_LEFT_RIGHT = 15
        static var TITLE_DETAIL_TITLE_TOP = 5
        static var TITLE_DETAIL_TITLE_HEIGHT = 20
        static var TITLE_DETAIL_DETAIL_TOP = 1
        static var TITLE_DETAIL_DETAIL_HEIGHT = 14
        static var TITLE_DETAIL_WIDTH = 167
        static var SWITCH_HEIGHT = 31
        static var SWITCH_WIDTH = 51
    }
    
    init(title:String, detail:String?, content:String, enabled:Bool) {
        super.init(style: UITableViewCellStyle.Default, reuseIdentifier: "")
        setupMetrics()
        
        setupTitleDetailLabels(title, detail: detail)
        
        self.textField = UITextField()
        self.textField.translatesAutoresizingMaskIntoConstraints = false;
        self.textField.text = content
        self.textField.enabled = enabled
        self.textField.textAlignment = NSTextAlignment.Right
        
        if(!enabled) {
            self.textField.textColor = UIColor.lightGrayColor()
        }
        
        self.contentView.addSubview(self.textField)
        
        let views:Dictionary = ["titleDetailContainer":self.titleDetailContainer,"textField":self.textField]
        
        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-DEFAULT_LEFT_RIGHT-[titleDetailContainer(TITLE_DETAIL_WIDTH)]-DEFAULT_LEFT_RIGHT-[textField]-DEFAULT_LEFT_RIGHT-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: self.metrics, views: views))
        
        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[titleDetailContainer]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: self.metrics, views: views))

        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[textField]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: self.metrics, views: views))
        
        setupTitleDetailConstraints()
        self.selectionStyle = UITableViewCellSelectionStyle.None
    }
    
    init(title:String, detail:String?, enabled:Bool) {
        super.init(style: UITableViewCellStyle.Default, reuseIdentifier: "")
        setupMetrics()
        
        setupTitleDetailLabels(title, detail: detail)
        
        self.toggleSwitch = UISwitch()
        self.toggleSwitch.translatesAutoresizingMaskIntoConstraints = false
        self.toggleSwitch.setOn(enabled, animated: false)
        self.contentView.addSubview(self.toggleSwitch)
        
        let views:Dictionary = ["titleDetailContainer":self.titleDetailContainer,"toggleSwitch":self.toggleSwitch]
        
        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-DEFAULT_LEFT_RIGHT-[titleDetailContainer(TITLE_DETAIL_WIDTH)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: self.metrics, views: views))
        
        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:[toggleSwitch(SWITCH_WIDTH)]-DEFAULT_LEFT_RIGHT-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: self.metrics, views: views))
        
        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[titleDetailContainer]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: self.metrics, views: views))
        
        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[toggleSwitch(SWITCH_HEIGHT)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: self.metrics, views: views))
        
        self.contentView.addConstraint(NSLayoutConstraint(item: self.toggleSwitch, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: self.contentView, attribute: NSLayoutAttribute.CenterY, multiplier: 1, constant: 0))
        
        setupTitleDetailConstraints()
        self.selectionStyle = UITableViewCellSelectionStyle.None
    }
    
    func setupTitleDetailLabels(title:String, detail:String?) {
        self.contentView.translatesAutoresizingMaskIntoConstraints = false
        
        self.titleDetailContainer = UIView()
        self.titleDetailContainer.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.titleDetailContainer)
        
        self.titleLabel = UILabel()
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.titleLabel.text = title
        self.titleLabel.font = UIFont.systemFontOfSize(16)
        self.titleDetailContainer.addSubview(self.titleLabel)
        
        if let _ = detail {
            self.detailLabel = UILabel()
            self.detailLabel.translatesAutoresizingMaskIntoConstraints = false
            self.detailLabel.text = detail
            self.detailLabel.font = UIFont.systemFontOfSize(11)
            self.titleDetailContainer.addSubview(self.detailLabel)
        }
    }
    
    func setupTitleDetailConstraints() {
        
        var views:Dictionary = ["titleLabel":self.titleLabel]

        if let _ = self.detailLabel {
            views["detailLabel"] = self.detailLabel
            
            self.titleDetailContainer.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[titleLabel]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: self.metrics, views: views))
            self.titleDetailContainer.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[detailLabel]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: self.metrics, views: views))
            
            self.titleDetailContainer.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-TITLE_DETAIL_TITLE_TOP-[titleLabel(TITLE_DETAIL_TITLE_HEIGHT)]-TITLE_DETAIL_DETAIL_TOP-[detailLabel(TITLE_DETAIL_DETAIL_HEIGHT)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: self.metrics, views: views))
        } else {
            self.titleDetailContainer.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[titleLabel]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: self.metrics, views: views))
            self.titleDetailContainer.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[titleLabel]|", options: NSLayoutFormatOptions(rawValue: 0), metrics: self.metrics, views: views))
        }
        
        self.addConstraint(NSLayoutConstraint(item: self.contentView, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute: NSLayoutAttribute.Height, multiplier: 1, constant: 0))
        
        self.addConstraint(NSLayoutConstraint(item: self.contentView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: self, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0))
    }
    
    func setupMetrics() {
        self.metrics = ["DEFAULT_LEFT_RIGHT":Metrics.DEFAULT_LEFT_RIGHT,
            "TITLE_DETAIL_TITLE_TOP":Metrics.TITLE_DETAIL_TITLE_TOP,
            "TITLE_DETAIL_TITLE_HEIGHT":Metrics.TITLE_DETAIL_TITLE_HEIGHT,
            "TITLE_DETAIL_DETAIL_TOP":Metrics.TITLE_DETAIL_DETAIL_TOP,
            "TITLE_DETAIL_DETAIL_HEIGHT":Metrics.TITLE_DETAIL_DETAIL_HEIGHT,
            "TITLE_DETAIL_WIDTH":Metrics.TITLE_DETAIL_WIDTH,
            "SWITCH_HEIGHT":Metrics.SWITCH_HEIGHT,
            "SWITCH_WIDTH":Metrics.SWITCH_WIDTH]
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
