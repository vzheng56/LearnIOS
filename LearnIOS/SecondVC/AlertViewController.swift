//
//  AlertViewController.swift
//  LearnIOS
//
//  Created by mini4s220 on 14/12/30.
//  Copyright (c) 2014年 mini4s220. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController,UIAlertViewDelegate,UIActionSheetDelegate {

    @IBAction func ShowAlertView(sender: AnyObject) {
        
        var AlertView = UIAlertView(title: "你好 ", message: "弹出信息描述", delegate: self, cancelButtonTitle: "calse", otherButtonTitles: "otere")
        AlertView.show()
        
    }
    @IBAction func ShowActionSheet(sender: AnyObject) {
        
        var actionSheet = UIActionSheet(title: "Title", delegate: self, cancelButtonTitle: "calerer", destructiveButtonTitle: "zhe shi miao shu ")
        actionSheet.showInView(self.view)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        //
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
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
