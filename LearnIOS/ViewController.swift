//
//  ViewController.swift
//  LearnIOS
//
//  Created by mini4s220 on 14/12/25.
//  Copyright (c) 2014年 mini4s220. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var LearnLevels = ["基础知识"]
    var LearnCourses = ["按钮"]
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
        return self.LearnLevels.count
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return self.LearnLevels[section]
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //
        var cell = UITableViewCell()
        cell.textLabel?.text = LearnCourses[indexPath.section]
        return cell
    }
    
}

