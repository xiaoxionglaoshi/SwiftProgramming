//
//  DNCustomView.swift
//  007 ClosuresDemo
//
//  Created by mainone on 16/10/13.
//  Copyright © 2016年 wjn. All rights reserved.
//

import UIKit
//定义一个无参数,无返回值的闭包类型
typealias ClickBlock = (() -> ())

class DNCustomView: UIView {
    var btnClickBlock: ClickBlock?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        button.setTitle("点我啊", for: .normal)
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(DNCustomView.btnClick), for: .touchUpInside)
        self.addSubview(button)
    }
    
    func btnClick() {
        if self.btnClickBlock != nil {
            //点击按钮执行闭包
            //注意：属性btnClickBlock是可选类型，需要先解包
            self.btnClickBlock!()
        }
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
