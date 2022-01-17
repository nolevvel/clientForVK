//
//  FriendCell.swift
//  clientForVK
//
//  Created by Николай Трушин on 26.12.2021.
//

import UIKit

final class FriendCell: UITableViewCell {
    
    @IBOutlet var friendIcon: AvatarImage!
    @IBOutlet var friendName: UILabel!
   
    
    func configure(icon: UIImage, name: String) {
        self.friendIcon.image = icon
        self.friendName.text = name
    }
}
