//
//  ViewController.swift
//  RainbowApp
//
//  Created by Jolijn Friederichs on 20/04/17.
//  Copyright © 2017 The App Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dragView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addColoredViews()
        
        dragView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width / 40, height: self.view.frame.height))
        dragView.backgroundColor = UIColor.black
        self.view.addSubview(dragView)
        
        let test = TestCode()
        test.printMessage()
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        var xCoordinate : CGFloat = 0
        if let touch = touches.first {
            xCoordinate = touch.location(in: self.view).x
        }
        
        dragView.frame.origin.x = xCoordinate
        
        let alpha = xCoordinate / self.view.frame.width * 10
        let viewsAmount = self.view.subviews.count
        
        if alpha < 1 && alpha > 0 {
            self.view.subviews[viewsAmount-2].alpha = 1 - alpha
        } else if alpha < 2 && alpha > 1 {
            self.view.subviews[viewsAmount-3].alpha = 2 - alpha
        } else if alpha < 3 && alpha > 2 {
            self.view.subviews[viewsAmount-4].alpha = 3 - alpha
        } else if alpha < 4 && alpha > 3 {
            self.view.subviews[viewsAmount-5].alpha = 4 - alpha
        } else if alpha < 5 && alpha > 4 {
            self.view.subviews[viewsAmount-6].alpha = 5 - alpha
        } else if alpha < 6 && alpha > 5 {
            self.view.subviews[viewsAmount-7].alpha = 6 - alpha
        } else if alpha < 7 && alpha > 6 {
            self.view.subviews[viewsAmount-8].alpha = 7 - alpha
        } else if alpha < 8 && alpha > 7 {
            self.view.subviews[viewsAmount-9].alpha = 8 - alpha
        } else if alpha < 9 && alpha > 8 {
            self.view.subviews[viewsAmount-10].alpha = 9 - alpha
        } else if alpha < 10 && alpha > 9 {
            self.view.subviews[viewsAmount-11].alpha = 10 - alpha
        } else {
            self.view.subviews[viewsAmount-12].alpha = 11 - alpha
        }
    }
    
    func addColoredViews() {
        let firstView = UIView(frame: self.view.frame)
        firstView.backgroundColor = #colorLiteral(red: 1, green: 0.2483955026, blue: 0.9763876796, alpha: 1)
        self.view.addSubview(firstView)
        
        let secondView = UIView(frame: self.view.frame)
        secondView.backgroundColor = #colorLiteral(red: 0, green: 0.9768747687, blue: 0.04287411273, alpha: 1)
        self.view.addSubview(secondView)
        
        let thirdView = UIView(frame: self.view.frame)
        thirdView.backgroundColor = #colorLiteral(red: 0.2991091609, green: 0.9915490746, blue: 0.9786109328, alpha: 1)
        self.view.addSubview(thirdView)
        
        let fourthView = UIView(frame: self.view.frame)
        fourthView.backgroundColor = #colorLiteral(red: 1, green: 0.9160200953, blue: 0, alpha: 1)
        self.view.addSubview(fourthView)
        
        let fifthView = UIView(frame: self.view.frame)
        fifthView.backgroundColor = #colorLiteral(red: 1, green: 0.1548061669, blue: 0.2176446915, alpha: 1)
        self.view.addSubview(fifthView)
        
        let sixthView = UIView(frame: self.view.frame)
        sixthView.backgroundColor = #colorLiteral(red: 1, green: 0.2513965964, blue: 0.9929719567, alpha: 1)
        self.view.addSubview(sixthView)
        
        let seventhView = UIView(frame: self.view.frame)
        seventhView.backgroundColor = #colorLiteral(red: 1, green: 0.4912058711, blue: 1, alpha: 1)
        self.view.addSubview(seventhView)
        
        let eighthView = UIView(frame: self.view.frame)
        eighthView.backgroundColor = #colorLiteral(red: 0.8410790563, green: 0.524666965, blue: 1, alpha: 1)
        self.view.addSubview(eighthView)
        
        let ninthView = UIView(frame: self.view.frame)
        ninthView.backgroundColor = #colorLiteral(red: 0.6646669507, green: 0.4109980762, blue: 1, alpha: 1)
        self.view.addSubview(ninthView)
        
        let tenthView = UIView(frame: self.view.frame)
        tenthView.backgroundColor = #colorLiteral(red: 0.4509802461, green: 0.2085574865, blue: 1, alpha: 1)
        self.view.addSubview(tenthView)
        
    }
}

