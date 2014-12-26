//
//  InLineSwiftViewController.swift
//  LearnIOS
//
//  Created by mini4s220 on 14/12/26.
//  Copyright (c) 2014年 mini4s220. All rights reserved.
//

import UIKit

class InLineSwiftViewController: UIViewController {

    @IBOutlet weak var InlineBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        InlineBtn.addTarget(self, action: "inLineTest", forControlEvents: UIControlEvents.TouchUpInside)
        // Do any additional setup after loading the view.
    }
    @objc private func inLineTest() {
        println("Called!")
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
