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
       
    
    
    @IBAction func gacha(){
        self.performSegue(withIdentifier:"result" , sender: nil )
        
        
    }

}

