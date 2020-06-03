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
    
    @IBOutlet var diceImageView: UIImageView!
    
        var diceArray: [UIImage]!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let number = Int.random(in: 0..<5)
        
        diceArray = [UIImage(named: "dice001.jpg")!,
                        UIImage(named: "dice002.jpg")!,
                        UIImage(named: "dice003.jpg")!,
                        UIImage(named: "dice004.jpg")!,
                        UIImage(named: "dice005.jpg")!,
                        UIImage(named: "dice006.jpg")!,]
        
        
        diceImageView.image = diceArray[number]
        
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
    
    
    
        @IBOutlet var naiyouLabel: UILabel!
        @IBOutlet var suuziLabel: UILabel!
       
        var isAnswered: Bool = false
        var wordArray: [Dictionary<String, String>] = []
        var nowNumber: Int = 0
        let saveData = UserDefaults.standard
        
       
            
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            wordArray = saveData.array(forKey: "WORD") as! [Dictionary<String, String>]
            
                wordArray.shuffle()
                suuziLabel.text = wordArray[nowNumber]["suuzi"]
                naiyouLabel.text = wordArray[nowNumber]["naiyou"]
            
            
            
            }
            // Do any additional setup after loading the view.

    }
        

       /*
          // MARK: - Navigation
          // In a storyboard-based application, you will often want to do a little preparation before navigation
          override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
              // Get the new view controller using segue.destination.
              // Pass the selected object to the new view controller.
       }
          */
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



