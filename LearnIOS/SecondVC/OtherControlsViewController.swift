//
//  OtherControlsViewController.swift
//  LearnIOS
//
//  Created by mini4s220 on 14/12/26.
//  Copyright (c) 2014年 mini4s220. All rights reserved.
//

import UIKit

class OtherControlsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blackColor()
        var Button = UIButton(frame: CGRectMake(0, 30, 100, 100))
        Button.setTitle("Button", forState: UIControlState.Normal)
        Button.addTarget(self, action: "ButtonTest", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(Button)
    }
    
    func ButtonTest() {
        println("asdad")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override init() {
        super.init()
        //
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
