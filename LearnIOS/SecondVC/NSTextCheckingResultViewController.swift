//
//  NSTextCheckingResultViewController.swift
//  LearnIOS
//
//  Created by mini4s220 on 14/12/30.
//  Copyright (c) 2014年 mini4s220. All rights reserved.
//

import UIKit

class NSTextCheckingResultViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    
    println(self.CheckNumber("1015dd7092"))
    println(self.OtherCheckNumber("101d092"))
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
  
  func OtherCheckNumber(phoneNubmer:NSString)->Bool {
    var expression = NSString(format: "^(([2-9]{1})?)?(([0-9]{8,9})?)?$")
    var regex = NSRegularExpression(pattern: expression, options: NSRegularExpressionOptions.CaseInsensitive, error: nil)
    var numberOfMatches = regex?.numberOfMatchesInString(phoneNubmer, options: NSMatchingOptions.allZeros, range: NSRange(location: 0,length: phoneNubmer.length))
    if numberOfMatches == 0 {
      return false
    }
    return true
  }
  
  
  func CheckNumber(phone:NSString) ->Bool {
    var error:NSError?
    var detector = NSDataDetector(types: NSTextCheckingType.PhoneNumber.rawValue, error: &error)
    var inputRange = NSMakeRange(0, phone.length)
    var matches = detector?.matchesInString(phone, options: NSMatchingOptions.allZeros, range: inputRange)
    if matches?.count == 0 {
      return false
    }
    var resoult = matches?.first as NSTextCheckingResult
    if resoult.resultType == NSTextCheckingType.PhoneNumber && resoult.range.location == inputRange.location && resoult.range.length == inputRange.length {
      return true
    }else {
      return false
    }
  }
}
