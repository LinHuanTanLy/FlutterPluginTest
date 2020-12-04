//
//  FirstView.swift
//  Runner
//
//  Created by 凌宇 on 2020/12/3.
//

import UIKit
class FirstViewController:UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        initBtn()
    }
    


    //初始化按钮，点击按钮跳转页面
        func initBtn() {
            let screenSize = UIScreen.main.bounds.size
            let jumpBtn = UIButton(type: .system)
            jumpBtn.setTitle("跳转", for: .normal)
            jumpBtn.frame = CGRect(x: screenSize.width / 2 - 50, y: screenSize.height - 50, width: 100, height: 30)
            jumpBtn.backgroundColor = UIColor(red: 50 / 255, green: 123 / 255, blue:  255 / 255, alpha: 1)
            jumpBtn.setTitleColor(UIColor.white, for: .normal)
            //按钮绑定事件，点击时执行
           // jumpBtn.addTarget(self, action: #selector(pageJump), for: .touchDown)
            self.view.addSubview(jumpBtn)

        }
}
