//
//  FlagCell.swift
//  Day23Challenge
//
//  Created by Sasha Evtushenko on 7/13/20.
//  Copyright © 2020 Sasha Evtushenko. All rights reserved.
//

import UIKit

class FlagCell: UITableViewCell {

    @IBOutlet var flagImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        flagImageView.layer.borderWidth = 1
        flagImageView.layer.borderColor = UIColor.systemGray.cgColor
    }
}
