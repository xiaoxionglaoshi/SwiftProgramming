//
//  ViewController.swift
//  007 ClosuresDemo
//
//  Created by mainone on 16/10/13.
//  Copyright © 2016年 wjn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let customView = DNCustomView(frame: CGRect(x: 10, y: 100, width: 300, height: 300))
        customView.btnClickBlock = {
            print("点击了按钮")
        }
        customView.backgroundColor = UIColor.green
        self.view.addSubview(customView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

