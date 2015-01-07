//
//  PrecessViewController.swift
//  LearnIOS
//
//  Created by mini4s220 on 15/1/7.
//  Copyright (c) 2015年 mini4s220. All rights reserved.
//

import UIKit

class PrecessViewController: UIViewController {

  @IBAction func BtnAction(sender: AnyObject) {
    
//    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
//    dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_LOW, 0), ^{
//      // Do something...
//      dispatch_async(dispatch_get_main_queue(), ^{
//        [MBProgressHUD hideHUDForView:self.view animated:YES];
//        });
//      });
    
    MBProgressHUD.showHUDAddedTo(self.view, animated: true);
    
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0), { () -> Void in
//      //
//      println("sss")
//      dispatch_async(dispatch_get_main_queue(), { () -> Void in
//        //
//        MBProgressHUD.hideHUDForView(self.view, animated: true)
//      })
//    })
  }
    override func viewDidLoad() {
        super.viewDidLoad()

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
