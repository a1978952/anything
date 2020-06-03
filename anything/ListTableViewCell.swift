//
//  ListTableViewCell.swift
//  anything
//
//  Created by 藤原琉暉 on 2020/05/30.
//  Copyright © 2020 fujiwara lupinus. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    @IBOutlet var suuziLabel: UILabel!
    @IBOutlet var naiyouLabel: UILabel!
      
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
