//
//  ToDoTableViewCell.swift
//  Ambitions
//
//  Created by 吉腾蛟 on 2021/3/31.
//  Copyright © 2021 JY. All rights reserved.
//

import Foundation
import UIKit

class ToDoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var content_label: UILabel!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureData(model :ToDoModel!) {
        content_label.text = model.content
    }
}
