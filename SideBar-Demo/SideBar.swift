//
//  SideBar.swift
//  SideBar-Demo
//
//  Created by YangCun on 14/12/14.
//  Copyright (c) 2014年 backslash112. All rights reserved.
//

import UIKit

@objc protocol SideBarDelegate {
    func sideBarDidSelectButtonAtIndex(index:Int)
    optional func sideBarWillClose()
    optional func sideBarWillOpen()
}

class SideBar: NSObject, SideBarTableViewContollerDelegate {

    let barWidth:CGFloat = 150.0
    let sideBarTableViewTopInset:CGFloat = 64.0
    let sideBarContainerView:UIView = UIView()
    let sideBarTableViewController:SideBarTableViewController = SideBarTableViewController()
    let originView:UIView!
    
    var animator:UIDynamicAnimator!
    var delegate:SideBarDelegate?
    var isSideBarOpen:Bool = false
    
    override init() {
        super.init()
    }
    
    init(sourceView:UIView, menuItems:Array<String>) {
        super.init()
        originView = sourceView
        sideBarTableViewController.tableData = menuItems
    }
    
    func sideBarControlDidSelectRow(indexPath: NSIndexPath) {
        
    }
}
