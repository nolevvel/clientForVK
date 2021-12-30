//
//  FriendModel.swift
//  clientForVK
//
//  Created by Николай Трушин on 27.12.2021.
//

import Foundation
import UIKit


struct FriendModel {
    var friendName: String
    var friendPhoto: [UIImage]
    var friendAvatar: UIImage
    var friendGender: gender
    var friendBirthday: String
}

enum gender {
    case man
    case woman
}

var putin = FriendModel(friendName: "Putin Vladimir", friendPhoto: [UIImage(named: "putin")!, UIImage(named: "medvedev")!], friendAvatar: UIImage(named: "putin") ?? UIImage(), friendGender: .man, friendBirthday: "07.10.1952")
var medvedev = FriendModel(friendName: "Medvedev Dmitriy", friendPhoto: [UIImage(named: "putin")!, UIImage(named: "medvedev")!], friendAvatar: UIImage(named: "medvedev") ?? UIImage(), friendGender: .man, friendBirthday: "14.09.1965")
var shoygu = FriendModel(friendName: "Shoygu Sergey", friendPhoto: [UIImage(named: "putin")!, UIImage(named: "medvedev")!], friendAvatar: UIImage(named: "shoygu") ?? UIImage(), friendGender: .man, friendBirthday: "21.05.1955")
var lavrov = FriendModel(friendName: "Lavrov Sergey", friendPhoto: [UIImage(named: "putin")!, UIImage(named: "medvedev")!], friendAvatar: UIImage(named: "lavrov") ?? UIImage(), friendGender: .man, friendBirthday: "21.03.1950")
var peskov = FriendModel(friendName: "Peskov Dmitriy", friendPhoto: [UIImage(named: "putin")!, UIImage(named: "medvedev")!], friendAvatar: UIImage(named: "peskov") ?? UIImage(), friendGender: .man, friendBirthday: "17.10.1967")

var friends = [putin, medvedev, shoygu, lavrov, peskov]
var userPhoto = [UIImage]()
