//
//  TimeView.swift
//  YNot
//
//  Created by Francisco Aguilera on 8/5/15.
//  Copyright © 2015 Dapper-Apps LLC. All rights reserved.
//

import UIKit

class TimeView: UIView {

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        let hourHand = UIBezierPath()
        let centerPoint = CGPoint(x: super.bounds.width / 2, y: super.bounds.height / 2)
        hourHand.moveToPoint(centerPoint)
        hourHand.addLineToPoint(CGPoint(x: centerPoint.x + 25, y: centerPoint.y + 25))
    }
}
