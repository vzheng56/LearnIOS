//
//  JFMinimalNotificationViewController.swift
//  LearnIOS
//
//  Created by mini4s220 on 15/1/7.
//  Copyright (c) 2015年 mini4s220. All rights reserved.
//

import UIKit

class JFMinimalNotificationViewController: UIViewController {

  
  @IBAction func BtnAction(sender: AnyObject) {
    
    
    minimaNotification = JFMinimalNotification(style: JFMinimalNotificationStytle.StyleDefault, title: "", subTitle: "", dismissalDelay: 0.0, touchHandler: { () -> Void in
      //
      println("")
      self.minimaNotification?.dismiss()
    })
    self.view.addSubview(self.minimaNotification!)
    minimaNotification?.show()
  }
  var minimaNotification:JFMinimalNotification?
    override func viewDidLoad() {
        super.viewDidLoad()

      
//      self.minimalNotification = [JFMinimalNotification notificationWithStyle:JFMinimalNotificationStyleError title:self.titleLabelTextField.text subTitle:self.subTitleLabelTextField.text dismissalDelay:0.0 touchHandler:^{
//        [self.minimalNotification dismiss];
//        }];
//      
//      [self.view addSubview:self.minimalNotification];
        // Do any additional setup after loading the view.

      

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
  }
  
  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  
  
  
}
