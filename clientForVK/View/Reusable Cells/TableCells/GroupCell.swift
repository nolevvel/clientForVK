//
//  GroupCell.swift
//  clientForVK
//
//  Created by Николай Трушин on 27.12.2021.
//

import UIKit

class GroupCell: UITableViewCell {
    @IBOutlet var groupIcon: AvatarImage!
    @IBOutlet var groupName: UILabel!
    
    
    
    func configure(icon: UIImage, name: String) {
        self.groupIcon.image = icon
        self.groupName.text = name
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
