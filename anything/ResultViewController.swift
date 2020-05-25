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

        let number = Int.random(in: 0..<10)
        
        monsterArray = [UIImage(named: "monster001.jpg")!,
                        UIImage(named: "monster002.jpg")!,
                        UIImage(named: "monster003.jpg")!,
                        UIImage(named: "monster004.jpg")!,
                        UIImage(named: "monster005.jpg")!,
                        UIImage(named: "monster006.jpg")!,
                        UIImage(named: "monseter007.jpg")!,
                        UIImage(named: "monster009.jpg")!,
                        UIImage(named: "monster010.jpg")!]
        
        monsterImageView.image = monsterArray[number]
        
        if number == 9{
            haikeiImageView.image = UIImage(named: "bg_gold.png")
        }else if number > 6 {
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



