//
//  ViewController.swift
//  MyApp06
//
//  Created by user22 on 2017/9/19.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
//    var imgs:[UIImage] = [UIImage(named:"")!,UIImage(named:"")!]
    var imgs:[UIImage] = []

    @IBAction func test1(_ sender: Any) {
        imgView.contentMode = .scaleToFill
        imgView.image = UIImage(named: "iphonex2.jpg")
    }
    
    @IBAction func test2(_ sender: Any) {
        imgView.contentMode = .scaleAspectFill
    }
    
    @IBAction func test3(_ sender: Any) {
        imgView.contentMode = .scaleAspectFit
    }
    
    
    @IBAction func test4(_ sender: Any) {
        imgView.animationDuration = 1
        imgView.animationImages = imgs
        //imgView.animationRepeatCount = 4
        imgView.startAnimating()
    }
    
    @IBAction func test5(_ sender: Any) {
        imgView.stopAnimating()
        imgView.image = imgs[Int(arc4random_uniform(5))]
    }
    
    @IBAction func test6(_ sender: Any) {
        
        imgView.isHidden = !imgView.isHidden
        
    }
    
    @IBAction func test7(_ sender: Any) {
        
        let myBtn = UIButton(type: .system)
        myBtn.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        myBtn.setTitle("偶素按鈕", for: .normal)
        myBtn.addTarget(self, action: #selector(onClick(_:)), for: UIControlEvents.touchUpInside)
        
        myBtn.addTarget(self, action: #selector(onClick2), for: UIControlEvents.touchUpInside)
        
        
        view.addSubview(myBtn)
        
        
    }
    
    func onClick(_: Any){
        print("OK")
    }
    
    func onClick2() {
        print("OK2")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgs += [UIImage(named:"iph04.jpeg")!]
        imgs.append(UIImage(named:"iph05.jpg")!)
        imgs += [UIImage(named:"iph03.jpg")!]
        imgs += [UIImage(named:"iphonex.jpg")!]
        imgs += [UIImage(named:"iphonex2.jpg")!]
        
        
        
    }

}

