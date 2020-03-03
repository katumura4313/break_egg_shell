//
//  ViewController.swift
//  20191212
//
//  Created by USER on 2019/12/12.
//  Copyright © 2019 jp.go. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var eggImage: UIImageView!
    //String
    var countString = "1111"
    //Int
    var countInt = 20
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //StringにInt
        countString = String(1)
    }
    
    
    @IBAction func myButton(_ sender: Any) {
        //String型しか表示できない
        //myLabel.text = countString
        
        //Int
        countInt -= 1
        print("countInt",countInt)
        
        //------キャスト かたを変更すること
        //String()
        myLabel.text = String(countInt)
        //Int型をStringに変えたい場合
        //String : 文字列
        //Int : 整数
        
//        var moji = "moji"
//        var suuzi = 1
//        moji = String(suuzi)
//        print("moji:::",moji)
        
        //------キャストここまで
        
                
        if countInt == 10 {
            eggImage.image = UIImage(named:"egg-hibi")
        }
        if countInt == 0 {
            eggImage.image = UIImage(named:"egg-broken")
        }
        if countInt < 0 {
            performSegue(withIdentifier: "goFinish", sender: nil)
        }
    }
}

