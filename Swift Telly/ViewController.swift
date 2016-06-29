//
//  ViewController.swift
//  Swift Telly
//
//  Created by Donald Sebastian Leung on 2016/6/29.
//  Copyright © 2016年 Donald Sebastian Leung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tvScreen: UIView!
    @IBAction func turnOnTheTelly(s: AnyObject) {
        let tvScreenOn = UIView(frame: CGRectMake(120, 80, 1, 1))
        tvScreenOn.backgroundColor = UIColor.whiteColor()
        tvScreen.addSubview(tvScreenOn)
        UIView.animateWithDuration(0.5, animations: {
            tvScreenOn.transform = CGAffineTransformMakeScale(240, 1)
        })
        UIView.animateWithDuration(0.5, animations: {
            UIView.setAnimationDelay(0.5)
            tvScreenOn.transform = CGAffineTransformConcat(tvScreenOn.transform, CGAffineTransformMakeScale(1, 160))
        })
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let tvBody = UIView(frame: CGRectMake(75, 250, 280, 200))
        tvBody.backgroundColor = UIColor.brownColor()
        self.view.addSubview(tvBody)
        let tvLeftAntenna = UIView(frame: CGRectMake(70, -90, 3, 100))
        tvLeftAntenna.backgroundColor = UIColor.blackColor()
        tvLeftAntenna.transform = CGAffineTransformMakeRotation(-0.5)
        tvBody.addSubview(tvLeftAntenna)
        let tvRightAntenna = UIView(frame: CGRectMake(210, -90, 3, 100))
        tvRightAntenna.backgroundColor = UIColor.blackColor()
        tvRightAntenna.transform = CGAffineTransformMakeRotation(0.5)
        tvBody.addSubview(tvRightAntenna)
        tvScreen = UIView(frame: CGRectMake(20, 20, 240, 160))
        tvScreen.backgroundColor = UIColor.blackColor()
        tvBody.addSubview(tvScreen)
    }
}

