//
//  FriendCardViewCell.swift
//  clientForVK
//
//  Created by Николай Трушин on 27.12.2021.
//

import UIKit

final class FriendCardViewCell: UICollectionViewCell {
    @IBOutlet var friendPhoto: UIImageView!
    @IBOutlet var likeButton: UIButton!

    @IBAction func setLikeFor() {
        if likeButton.isSelected {
            likeButton.isSelected = false
            likeButton.tintColor = .gray
        } else {
            likeButton.isSelected = true
            likeButton.tintColor = .red
        }
    }
    
    func configure(photo: UIImage) {
        self.friendPhoto.image = photo
        
        likeButton.tintColor = .gray
        likeButton.setImage(UIImage(systemName: "heart") ?? UIImage(), for: .normal)
        likeButton.setImage(UIImage(systemName: "heart.fill") ?? UIImage(), for: .selected)
        likeButton.setTitle("1", for: .selected)
        likeButton.setTitle("0", for: .normal)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
