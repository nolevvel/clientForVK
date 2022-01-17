//
//  FriendCardViewCell.swift
//  clientForVK
//
//  Created by Николай Трушин on 27.12.2021.
//

import UIKit

final class FriendCardViewCell: UICollectionViewCell {
    @IBOutlet var friendPhoto: UIImageView!
    @IBOutlet public var likeButton: UIButton!
    
    func configure(photo: UIImage) {
        self.friendPhoto.image = photo
    }
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
