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

var putin = FriendModel(friendName: "Putin Vladimir", friendPhoto: [UIImage(named: "putin1")!, UIImage(named: "putin2")!, UIImage(named: "putin3")!, UIImage(named: "putin4")!, UIImage(named: "putin5")!], friendAvatar: UIImage(named: "putin") ?? UIImage(), friendGender: .man, friendBirthday: "07.10.1952")
var medvedev = FriendModel(friendName: "Medvedev Dmitriy", friendPhoto: [UIImage(named: "medvedev1")!, UIImage(named: "medvedev2")!, UIImage(named: "medvedev3")!, UIImage(named: "medvedev4")!, UIImage(named: "medvedev5")!], friendAvatar: UIImage(named: "medvedev") ?? UIImage(), friendGender: .man, friendBirthday: "14.09.1965")
var shoygu = FriendModel(friendName: "Shoygu Sergey", friendPhoto: [UIImage(named: "shoygu1")!, UIImage(named: "shoygu2")!, UIImage(named: "shoygu3")!, UIImage(named: "shoygu4")!, UIImage(named: "shoygu5")!], friendAvatar: UIImage(named: "shoygu") ?? UIImage(), friendGender: .man, friendBirthday: "21.05.1955")
var lavrov = FriendModel(friendName: "Lavrov Sergey", friendPhoto: [UIImage(named: "lavrov1")!, UIImage(named: "lavrov2")!, UIImage(named: "lavrov3")!, UIImage(named: "lavrov4")!, UIImage(named: "lavrov5")!], friendAvatar: UIImage(named: "lavrov") ?? UIImage(), friendGender: .man, friendBirthday: "21.03.1950")
var peskov = FriendModel(friendName: "Peskov Dmitriy", friendPhoto: [UIImage(named: "peskov1")!, UIImage(named: "peskov2")!, UIImage(named: "peskov3")!, UIImage(named: "peskov4")!, UIImage(named: "peskov5")!], friendAvatar: UIImage(named: "peskov") ?? UIImage(), friendGender: .man, friendBirthday: "17.10.1967")
var golikova = FriendModel(friendName: "Golikova Tatiana", friendPhoto: [UIImage(named: "golikova1")!, UIImage(named: "golikova2")!, UIImage(named: "golikova3")!, UIImage(named: "golikova4")!, UIImage(named: "golikova5")!], friendAvatar: UIImage(named: "golikova")!, friendGender: .woman, friendBirthday: "09.02.1966")
var gref = FriendModel(friendName: "Gref German", friendPhoto: [UIImage(named: "gref1")!, UIImage(named: "gref2")!, UIImage(named: "gref3")!, UIImage(named: "gref4")!, UIImage(named: "gref5")!], friendAvatar: UIImage(named: "gref")!, friendGender: .man, friendBirthday: "08.02.1964")

var friends = [putin, medvedev, shoygu, lavrov, peskov, golikova, gref]
var userPhoto = [UIImage]()
