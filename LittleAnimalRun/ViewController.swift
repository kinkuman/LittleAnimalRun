//
//  ViewController.swift
//  LittleAnimalRun
//
//  Created by user on 2018/10/17.
//  Copyright © 2018年 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var littleAnimalImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // タッチは１つに限定
        self.view.isMultipleTouchEnabled = false
        
        // 背景色設定
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        
        // ファイル名配列
        let nameArray = ["hamu1","hamu2"]
        
        // 空の配列を用意
        littleAnimalImageView.animationImages = []
        
        // 画像のセット
        for name in nameArray {
            let image = UIImage(named: name)!
            littleAnimalImageView.animationImages?.append(image)
        }
        
        // 繰り返し永遠
        littleAnimalImageView.animationRepeatCount = 0
        // 0.5秒間隔
        littleAnimalImageView.animationDuration = 0.5
        littleAnimalImageView.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // タッチ
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // タッチを取得
        let touch = touches.first!
        
        // タッチ位置の取得
        let tapPoint = touch.location(in: self.view)
        
        // 移動のアニメーション
        UIView.animate(withDuration: 2) {
            self.littleAnimalImageView.center = tapPoint
        }
    }
    

}

