//
//  TodoTableViewCell.swift
//  ToDo
//
//  Created by Admin on 6/4/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class TodoTableViewCell: UITableViewCell {

    @IBOutlet weak var viewHolder: UIView!
    @IBOutlet weak var lblTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    
        self.viewHolder.dropShadow()
        self.viewHolder.layer.cornerRadius = 10
        self.viewHolder.backgroundColor = UIColor.random()
    }
}
