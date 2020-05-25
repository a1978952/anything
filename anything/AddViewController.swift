//
//  AddViewController.swift
//  anything
//
//  Created by 藤原琉暉 on 2020/05/25.
//  Copyright © 2020 fujiwara lupinus. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet var suuzi: UITextField!
    @IBOutlet var naiyou: UITextField!
    var wordArray: [Dictionary<String,String>] = []
    let SaveData = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if SaveData.array(forKey: "WORD") != nil {
            wordArray = SaveData.array(forKey: "WORD") as! [Dictionary<String,String>]
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveWord() {
        let wordDictionary = ["suuzi": suuzi.text!,"naiyou": naiyou.text!]
        wordArray.append(wordDictionary)
        SaveData.set(wordArray, forKey: "WORD")
        
        let alert = UIAlertController(
            title: "保存完了しました",
            message: "内容の登録が完了しました",
            preferredStyle: .alert
        )
        
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        ))
        present(alert,animated: true,completion: nil)
    }
    /*
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
