//
//  ViewController.swift
//  PullDownMenuView
//
//  Created by qinxin on 15/6/29.
//  Copyright (c) 2015年 qinxin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, PullDownMenuDelegate {
    
    var gkMenu: PullDownMenuView? { didSet { gkMenu?.delegate = self } }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if gkMenu == nil {
            gkMenu = PullDownMenuView(frame: CGRectMake(0, self.view.center.y, UIScreen.mainScreen().bounds.size.width, 50))
            let gkArray = [["阿森纳门将", "切赫", "什琴斯尼"], ["切尔西门将", "库尔图瓦", "斯托克维奇"]]
            gkMenu!.initWithArray(gkArray, selectedColor: UIColor(red: 0/255, green: 171/255, blue: 155/255, alpha: 1))
            self.view.addSubview(gkMenu!)
        }
    }
    
    //MARK: - PullDownMenu delegate
    
    func pullDownMenu(pullDownMenu: PullDownMenuView!, didSelectRowAtColumn column: NSInteger, didSelectRowAtRow row: NSInteger) {
        println("column = \(column),,,row = \(row)")
    }
}

