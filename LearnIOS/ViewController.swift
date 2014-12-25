//
//  ViewController.swift
//  LearnIOS
//
//  Created by mini4s220 on 14/12/25.
//  Copyright (c) 2014年 mini4s220. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var LearnLevels = ["基础知识","TableView"]
    var LearnCourses_Base = ["按钮","Slider","Switch"]
    var LearnCourses_TableView = ["TabelView创建"]
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
            return LearnCourses_Base.count
        case 1:
            return LearnCourses_TableView.count
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
            cell.textLabel?.text = LearnCourses_Base[indexPath.row]
            return cell
        case 1:
            var cell = UITableViewCell()
            cell.textLabel?.text = LearnCourses_TableView[indexPath.row]
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
        case 0:
            var PresentVC:UIViewController?
            switch indexPath.row {
                case 0:
                PresentVC = ButtonViewController(nibName: "ButtonView", bundle: nil)
            default:
                PresentVC = nil
            }
            if PresentVC != nil {
            self.navigationController?.pushViewController(PresentVC!, animated: true)
            }
        default:
            println("ddd")
        }
    }
    
    func ShowNextViewController(vc:UIViewController) {
        
    }
    
}

