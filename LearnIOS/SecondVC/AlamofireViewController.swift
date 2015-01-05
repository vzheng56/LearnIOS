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

      //http://op.juhe.cn/onebox/weather/query?cityname=%E6%B8%A9%E5%B7%9E&key=2d54fd1ee89a1486d39a44a1e0886345
      //http://op.juhe.cn/onebox/weather/query?cityname=北京&key＝2d54fd1ee89a1486d39a44a1e0886345
      //http://op.juhe.cn/onebox/weather/query?cityname=%E5%8C%97%E4%BA%AC&key=2d54fd1ee89a1486d39a44a1e0886345
      //http://op.juhe.cn/onebox/weather/query?cityname=北京&key=2d54fd1ee89a1486d39a44a1e0886345
      Alamofire.request(.GET, "http://op.juhe.cn/onebox/weather/query?cityname=%E5%8C%97%E4%BA%AC&key=2d54fd1ee89a1486d39a44a1e0886345&dtype=json").responseString {
        (_, _, data, _) in
        
       // var nsdata = NSData(data: <#NSData#>)
      //  var getData = NSString(data: data! as NSData, encoding: NSUTF8StringEncoding)
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
