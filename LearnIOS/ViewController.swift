//
//  ViewController.swift
//  LearnIOS
//
//  Created by mini4s220 on 14/12/25.
//  Copyright (c) 2014年 mini4s220. All rights reserved.
//

import UIKit


class ViewController: UITableViewController {

    var LearnLevels = ["Swift基础知识","IOSSDK","第三方库","零碎知识点"]
    var LearnCourses_SwiftBase = ["闭包","其他知识"]
    var LearnCourses_IOSSDK = ["按钮","Alert","正则表达式","SceneKit","其他控件"]
    var LearnCourses_ThirdLabs = ["Alamofire","JFMinimalNotification"]
    var LearnCourses_SomeKnowledge = ["Swift的内联优化"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.backgroundColor = UIColor.whiteColor()
      
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return LearnCourses_SwiftBase.count
        case 1:
            return LearnCourses_IOSSDK.count
        case 2:
            return LearnCourses_ThirdLabs.count
        case 3:
            return LearnCourses_SomeKnowledge.count
        default:
            return 0
        }

    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        //
        
        return self.LearnLevels.count
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return self.LearnLevels[section]
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //
        switch indexPath.section {
        case 0:
            var cell = UITableViewCell()
            cell.textLabel?.text = LearnCourses_SwiftBase[indexPath.row]
            return cell
        case 1:
            var cell = UITableViewCell()
            cell.textLabel?.text = LearnCourses_IOSSDK[indexPath.row]
            return cell
        case 2:
            var cell = UITableViewCell()
            cell.textLabel?.text = LearnCourses_ThirdLabs[indexPath.row]
            return cell
        case 3:
            var cell = UITableViewCell()
            cell.textLabel?.text = LearnCourses_SomeKnowledge[indexPath.row]
            return cell
            
        default:
            println("Error Number")
            var cell = UITableViewCell()
            cell.textLabel?.text = "未添加课程"
            return cell
        }

    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //
        switch indexPath.section {
            //MARK: Swift 基础知识
        case 0:
            var PresentVC:UIViewController?
            switch indexPath.row {
            case 0:
                PresentVC = ButtonViewController(nibName: "ButtonView", bundle: nil)
            case 1:
                PresentVC = OtherControlsViewController(nibName: "OtherControlsViewController", bundle: nil)
            default:
                PresentVC = nil
            }
            if PresentVC != nil {
                self.navigationController?.pushViewController(PresentVC!, animated: true)
            }
            
            //MARK: IOSSDK的Controller
        case 1:
            var PresentVC:UIViewController?
            switch indexPath.row {
            case 0:
                PresentVC = ButtonViewController(nibName: "ButtonView", bundle: nil)
            case 1:
                PresentVC = AlertViewController(nibName: "AlertViewController", bundle: nil)
            case 2:
                PresentVC = NSTextCheckingResultViewController(nibName: "NSTextCheckingResultViewController", bundle: nil)
            case 3:
              PresentVC = SceneKitViewController(nibName: "SceneKitViewController", bundle: nil)
            default:
                PresentVC = nil
            }
            if PresentVC != nil {
                self.navigationController?.pushViewController(PresentVC!, animated: true)
            }
          //MARK: IOS第三方库
        case 2:
          var PresentVC:UIViewController?
          switch indexPath.row {
          case 0:
            PresentVC = AlamofireViewController(nibName: "AlamofireViewController", bundle: nil)
          default:
            PresentVC = nil
          }
          if PresentVC != nil {
            self.navigationController?.pushViewController(PresentVC!, animated: true)
          }
        case 3:
            var PresentVC:UIViewController?
            switch indexPath.row {
            case 0:
                PresentVC = InLineSwiftViewController(nibName: "InLineSwiftViewController", bundle: nil)
            default:
                PresentVC = nil
            }
            if PresentVC != nil {
                self.navigationController?.pushViewController(PresentVC!, animated: true)
            }

            
        default:
            println("未添加跳转")
        }
    }
    
    func ShowNextViewController(vc:UIViewController) {
        
    }
    
}

