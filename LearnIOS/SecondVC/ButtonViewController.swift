//
//  ButtonViewController.swift
//  LearnIOS
//
//  Created by mini4s220 on 14/12/25.
//  Copyright (c) 2014年 mini4s220. All rights reserved.
//

import UIKit

class ButtonViewController: UIViewController {

    @IBOutlet weak var MyButton001: UIButton!
    
    @IBAction func MyButton001Action(sender: AnyObject) {
        MyButton001.setTitle("你点了我", forState: .Normal)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        var rightBarItem = UIBarButtonItem(title: "详情", style: UIBarButtonItemStyle.Plain, target: self, action: "ShowDetailController")
        self.navigationItem.rightBarButtonItem = rightBarItem
    }
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    @objc func ShowDetailController() {
        var DetailVC = DetailPageViewController(nibName: "DetailPageViewController", bundle: nil)
        self.navigationController?.pushViewController(DetailVC, animated: true)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
     override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
