//
//  AlamofireViewController.swift
//  LearnIOS
//
//  Created by mini4s220 on 15/1/5.
//  Copyright (c) 2015年 mini4s220. All rights reserved.
//

import UIKit
import Alamofire

class AlamofireViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      Alamofire.request(.GET, "https://api.500px.com/v1/photos").responseJSON() {
        (_, _, data, _) in
        println(data)
      }
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
