//
//  GroupModel.swift
//  clientForVK
//
//  Created by Николай Трушин on 27.12.2021.
//

import Foundation
import UIKit

struct GroupModel : Equatable{
    var groupName: String
    var groupLogo : UIImage
    
}

var sng = GroupModel(groupName: "SNG", groupLogo: UIImage(systemName: "rectangle.3.group.fill") ?? UIImage())
var opek = GroupModel(groupName: "OPEK", groupLogo: UIImage(systemName: "rectangle.3.group.fill") ?? UIImage())
var nato = GroupModel(groupName: "NATO", groupLogo: UIImage(systemName: "rectangle.3.group.fill") ?? UIImage())
var pingpong = GroupModel(groupName: "Ping-Pong", groupLogo: UIImage(systemName: "rectangle.3.group.fill") ?? UIImage())
var russia = GroupModel(groupName: "Russia", groupLogo: UIImage(systemName: "rectangle.3.group.fill") ?? UIImage())


var groups = [sng, opek, nato, pingpong, russia]
var myGroups = [GroupModel]()

