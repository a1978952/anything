//
//  ViewController.swift
//  anything
//
//  Created by 藤原琉暉 on 2020/05/25.
//  Copyright © 2020 fujiwara lupinus. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet var saikoroImageView: UIImageView!

   
    @IBAction func back (sender: UIStoryboardSegue){
        }

    
    @IBAction func startButtonTapped(){
        let saveData = UserDefaults.standard
        if saveData.array(forKey: "WORD") != nil{
            if saveData.array(forKey:"WORD")!.count > 0{
            performSegue(withIdentifier:"toResultView",sender:nil)
            }
        } else {
            let alert = UIAlertController (
                title:"内容",
                message:"まずは「登録」をタップして内容登録してください",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(
                title: "OK",
                style: .default,
                handler: nil
                ))
            
            self.present(alert,animated:true,completion:nil)
    }
    
}

}
