//
//  ViewController.swift
//  tabnav
//
//  Created by kan on 2014/11/04.
//  Copyright (c) 2014年 notice,inc. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    var view1Controller = UINavigationController(rootViewController: UIViewController())
    var view2Controller = UINavigationController(rootViewController: UIViewController())

    // viewとナビゲーションヘッダの色を変更する。
    view1Controller.view.backgroundColor = UIColor.darkGrayColor()
    view1Controller.navigationBar.backgroundColor = UIColor.redColor()
    view2Controller.navigationBar.backgroundColor = UIColor.greenColor()
    view2Controller.view.backgroundColor = UIColor.grayColor()

    view1Controller.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.MostRecent, tag: 1)
    view2Controller.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Contacts, tag: 2)
    let myTabs = [view1Controller, view2Controller]
    // 以下のようにも書ける。
    // let myTabs = NSArray(objects: view1Controller, view1Controller)
    self.setViewControllers(myTabs, animated: false)

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

