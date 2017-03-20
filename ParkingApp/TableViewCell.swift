//
//  TableViewCell.swift
//  ParkingApp
//
//  Created by Joey Schiavi on 3/15/17.
//  Copyright © 2017 Park@UF. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var detailButton: UIButton!
    @IBOutlet weak var searchSwitch: UISwitch!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
