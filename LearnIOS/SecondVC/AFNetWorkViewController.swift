//
//  AFNetWorkViewController.swift
//  LearnIOS
//
//  Created by mini4s220 on 14/12/31.
//  Copyright (c) 2014年 mini4s220. All rights reserved.
//

import UIKit

class AFNetWorkViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      self.monitorNetworkType()
      var notifaction = JFMinimalNotification(style: JFMinimalNotificationStytle.StyleDefault, title: "NiHao", subTitle: "zhe shi xiang xin xi")
      self.view.addSubview(notifaction)
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
  
  enum NetworkType{
    case NetworkTypeWiFi
    case NetworkType3G
    case NetworkTypeNone
  }
  var currentNetworkType = NetworkType.NetworkTypeNone
  func monitorNetworkType() {
    var manager = AFHTTPRequestOperationManager(baseURL: NSURL(string: "www.baidu.com"))
    manager.reachabilityManager.setReachabilityStatusChangeBlock { (status:AFNetworkReachabilityStatus) -> Void in
      //
      if status == AFNetworkReachabilityStatus.ReachableViaWiFi {
        println("当前网络是Wi-Fi")
        self.currentNetworkType = NetworkType.NetworkTypeWiFi
      } else if status == AFNetworkReachabilityStatus.ReachableViaWWAN {
        println("当前网络状态时：GPRS／3G")
        self.currentNetworkType = NetworkType.NetworkType3G
      } else if status == AFNetworkReachabilityStatus.NotReachable {
        println("网络未连接")
        self.currentNetworkType = NetworkType.NetworkTypeNone
      }
    }
    manager.reachabilityManager.startMonitoring()
  }

}
