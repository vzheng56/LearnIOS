//
//  SceneKitViewController.swift
//  LearnIOS
//
//  Created by mini4s220 on 15/1/5.
//  Copyright (c) 2015年 mini4s220. All rights reserved.
//

import UIKit
import SceneKit
import AVFoundation

class SceneKitViewController: UIViewController {

  @IBOutlet weak var ButtonTest: UIButton!
  
  var torusNode:SCNNode?
  var cameraNode:SCNNode?
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      let videoPath = NSBundle.mainBundle().URLForResource("720_gongfu", withExtension: "mp4")
      var player=AVPlayer(URL: videoPath)
      
      
      self.view.backgroundColor = UIColor.blackColor()
      
      var sceneView=SCNView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width , height: self.view.frame.height/2))
      var scene=SCNScene()
      sceneView.scene=scene
      sceneView.backgroundColor = UIColor.redColor()
      
      self.view.addSubview(sceneView)
      sceneView.autoenablesDefaultLighting=true
      
      var camera=SCNCamera()
      cameraNode=SCNNode()
      cameraNode?.camera=camera
      cameraNode?.position=SCNVector3(x: 0, y: 0, z:8)
      scene.rootNode.addChildNode(cameraNode!)
      cameraNode?.rotation = SCNVector4(x:0, y: 0, z: 0, w: 1)
      
      var torus=SCNTorus(ringRadius: 1, pipeRadius: 0.35)
      torusNode=SCNNode(geometry: torus)
      
      torusNode?.rotation = SCNVector4(x:0, y: 45, z: 0, w: 1)
      
      scene.rootNode.addChildNode(torusNode!)
      
      
      var playerLayer = AVPlayerLayer(player: player)
      playerLayer.frame = CGRectMake(0, 0, 1024, 1024)
      println(playerLayer.frame)
      torus.firstMaterial?.diffuse.contents = playerLayer
      player.play()
      torus.firstMaterial?.specular.contents=UIColor.whiteColor()

      println(ButtonTest.titleLabel?.text)
        // Do any additional setup after loading the view.
    }

  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
  }
  
  @IBAction func BtnAction(sender: AnyObject) {
    
    println("HaoNiuVi")
  }

  required init(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
