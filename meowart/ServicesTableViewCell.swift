//
//  ServicesTableViewCell.swift
//  meowart
//
//  Created by dingo on 2016/4/14.
//  Copyright © 2016年 Dingo Appz. All rights reserved.
//

import UIKit

class ServicesTableViewCell: UITableViewCell {
    
    @IBOutlet var CellLabel: UILabel!
    @IBOutlet var CellImage: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
