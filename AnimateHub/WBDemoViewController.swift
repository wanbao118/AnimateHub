//
//  WBDemoViewController.swift
//  AnimateHub
//
//  Created by 姜万宝 on 1/3/16.
//  Copyright © 2016 wanbao118@hotmail.com. All rights reserved.
//

import UIKit

class WBDemoViewController: UIViewController {

    @IBOutlet weak var demoView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initView()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "orientChange:", name: UIDeviceOrientationDidChangeNotification, object: nil)
        // Do any additional setup after loading the view.
    }

    func orientChange(notification:NSNotification){
        self.initView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initView(){
        //self.demoView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)
        //self.demoView = UIImageView.init(image: UIImage(named: "backgroud.png"))
        let orient = UIDevice.currentDevice().orientation;
        if UIDeviceOrientationIsPortrait(orient){
            self.demoView.layer.contents = UIImage(named: "backgroud.png")!.CGImage
            //self.view.addSubview(self.demoView)
        }
        
        if UIDeviceOrientationIsLandscape(orient){
            self.demoView.layer.contents = UIImage(named: "background.png")!.CGImage
            //self.view.addSubview(self.demoView)
        }
        
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
