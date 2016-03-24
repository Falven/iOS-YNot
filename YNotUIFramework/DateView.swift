//
//  DateControl.swift
//  YNot
//
//  Created by Francisco Aguilera on 8/3/15.
//  Copyright © 2015 Dapper-Apps LLC. All rights reserved.
//

import UIKit

@IBDesignable class DateView: UIView {
    
    // MARK: Stored Properties
    
    private let _dateLabel = UILabel()
    
    var date: NSDate = NSDate() {
        didSet {
            let formatter = NSDateFormatter()
            formatter.dateFormat = "mm\ndd"
            _dateLabel.text = formatter.stringFromDate(date)
        }
    }
    
    // MARK: Inspectables
    
    @IBInspectable var color: UIColor? = UIColor.whiteColor() {
        didSet {
            _dateLabel.textColor = color
            layer.borderColor = color?.CGColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 3.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 8.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var fontSize: CGFloat = 14.0 {
        didSet {
            _dateLabel.font = _dateLabel.font.fontWithSize(fontSize)
        }
    }
    
    // MARK: Initialization
    
    private func initLabel() {
        _dateLabel.frame = CGRectMake(0, 0, 50.0, 50.0)
        _dateLabel.font = UIFont(name: "OpenSans", size: fontSize)
        _dateLabel.textAlignment = NSTextAlignment.Center
        _dateLabel.numberOfLines = 2
        let formatter = NSDateFormatter()
        formatter.dateFormat = "MMM\ndd"
        _dateLabel.text = formatter.stringFromDate(date)
        self.addSubview(_dateLabel)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initLabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initLabel()
    }
}
