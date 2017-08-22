//
//  CustomDrawingView.swift
//  CornersViewSO
//
//  Created by Reinier Melian on 19/08/2017.
//  Copyright © 2017 Reinier Melian. All rights reserved.
//

import UIKit

class CustomDrawingView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    func drawCorners()
    {
        let currentContext = UIGraphicsGetCurrentContext()
        
        currentContext?.setLineWidth(1)
        currentContext?.setStrokeColor(UIColor.red.cgColor)
        
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 0, y: 0))
        bezierPath.addLine(to: CGPoint(x: self.bounds.size.width, y: 0))
        bezierPath.addLine(to: CGPoint(x: self.bounds.size.width, y: self.bounds.size.height))
        
        //first part of top left corner
        currentContext?.addPath(bezierPath.cgPath)
        currentContext?.strokePath()
        
        
        
    
    }
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        super.draw(rect)
        self.drawCorners()
    }


}
