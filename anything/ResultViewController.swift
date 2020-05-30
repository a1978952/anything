//
//  ResultViewController.swift
//  anything
//
//  Created by 藤原琉暉 on 2020/05/25.
//  Copyright © 2020 fujiwara lupinus. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBAction func modoru(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet var haikeiImageView: UIImageView!
    
    @IBOutlet var monsterImageView: UIImageView!
    
        var monsterArray: [UIImage]!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let number = Int.random(in: 0..<5)
        
        monsterArray = [UIImage(named: "dice001.jpg")!,
                        UIImage(named: "dice002.jpg")!,
                        UIImage(named: "dice003.jpg")!,
                        UIImage(named: "dice004.jpg")!,
                        UIImage(named: "dice005.jpg")!,
                        UIImage(named: "dice006.jpg")!,
                        UIImage(named: "dice007.jpg")!,
                        UIImage(named: "dice009.jpg")!,
                        UIImage(named: "dice010.jpg")!]
        
        monsterImageView.image = monsterArray[number]
        
        if number == 5{
            haikeiImageView.image = UIImage(named: "bg_gold.png")
        }else if number > 3 {
            haikeiImageView.image = UIImage(named: "bg_red.png")
        }else{
            haikeiImageView.image = UIImage(named: "bg_blue.png")
        }
        
        
        // Do any additional setup after loading the view.
    }
    

    
    override func viewDidAppear(_ animated: Bool){
            super.viewDidAppear(true)
        
            let animation = CABasicAnimation(keyPath: "transform")
        
            animation.fromValue = NSNumber(value: 0)
        
            animation.toValue = NSNumber(value: 2 * Double.pi)
        
            animation.valueFunction = CAValueFunction(name: CAValueFunctionName.rotateZ)
        
            animation.duration = 5
        
            animation.repeatCount = Float.infinity
        
            haikeiImageView.layer.add(animation, forKey: nil)
        }
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



