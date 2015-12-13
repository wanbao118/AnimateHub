//
//  WBLogonViewController.swift
//  AnimateHub
//
//  Created by 姜万宝 on 12/13/15.
//  Copyright © 2015 wanbao118@hotmail.com. All rights reserved.
//

import UIKit

class WBLogonViewController: UIViewController {

    @IBOutlet weak var bubble1: UIImageView!
    @IBOutlet weak var bubble2: UIImageView!
    @IBOutlet weak var bubble3: UIImageView!
    @IBOutlet weak var bubble4: UIImageView!
    @IBOutlet weak var bubble5: UIImageView!
    @IBOutlet weak var dot: UIImageView!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.bubble1.transform = CGAffineTransformMakeScale(0, 0)
        self.bubble2.transform = CGAffineTransformMakeScale(0, 0)
        self.bubble3.transform = CGAffineTransformMakeScale(0, 0)
        self.bubble4.transform = CGAffineTransformMakeScale(0, 0)
        self.bubble5.transform = CGAffineTransformMakeScale(0, 0)
        //self.dot.center.x -= self.view.bounds.width/2 //Not effective
        self.dot.alpha = 0
        //self.logo.center.x -= self.view.bounds.width //Not effective
        self.logo.alpha = 0
        
        let usernamePaddingView = UIView(frame: CGRectMake(0, 0, 40,40))
        let passwordPaddingView = UIView(frame: CGRectMake(0, 0, 40,40))
        self.username.leftView = usernamePaddingView
        self.username.leftViewMode = .Always
        
        self.password.leftView = passwordPaddingView
        self.password.leftViewMode = .Always
        
        let userImageView = UIImageView(image: UIImage(named: "user"))
        userImageView.frame.origin = CGPoint(x: 11, y: 11)
        self.username.addSubview(userImageView)
        //self.username.center.x -= self.view.bounds.width //Not effective
        self.username.alpha = 0
        
        let keyImageView = UIImageView(image: UIImage(named: "key"))
        keyImageView.frame.origin = CGPoint(x: 11, y: 11)
        self.password.addSubview(keyImageView)
        //self.password.center.x -= self.view.bounds.width //Not effective
        self.password.alpha = 0
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0.3, delay: 0.4, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: .AllowAnimatedContent, animations: {
            self.bubble1.transform = CGAffineTransformMakeScale(1, 1)
            self.bubble5.transform = CGAffineTransformMakeScale(1, 1)
        }, completion: nil)

        UIView.animateWithDuration(0.4, delay: 0.3, usingSpringWithDamping: 0.2, initialSpringVelocity: 0, options: .AllowAnimatedContent, animations: {
            self.bubble2.transform = CGAffineTransformMakeScale(1, 1)
            self.bubble4.transform = CGAffineTransformMakeScale(1, 1)
        }, completion: nil)

        UIView.animateWithDuration(0.3, delay: 0.4, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: .AllowAnimatedContent, animations: {
            self.bubble3.transform = CGAffineTransformMakeScale(1, 1)
        }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.4, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.3, options: .AllowAnimatedContent, animations: {
            self.logo.alpha = 1
            self.logo.center.x += self.view.bounds.width
        }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 0.5, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.6, options: .AllowAnimatedContent, animations: {
            self.dot.alpha = 1
            self.dot.center.x += self.view.bounds.width/2
        }, completion: nil)
        
        UIView.animateWithDuration(0.4, delay: 0.4, usingSpringWithDamping: 0.4, initialSpringVelocity: 0.4, options: .AllowAnimatedContent, animations: {
            self.username.alpha = 1
            self.username.center.x += self.view.bounds.width
            self.password.alpha = 1
            self.password.center.x += self.view.bounds.width
        }, completion: nil)
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
