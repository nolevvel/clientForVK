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

var sng = GroupModel(groupName: "SNG", groupLogo: UIImage(named: "sng") ?? UIImage())
var opek = GroupModel(groupName: "OPEK", groupLogo: UIImage(named: "opek") ?? UIImage())
var nato = GroupModel(groupName: "NATO", groupLogo: UIImage(named: "nato") ?? UIImage())
var pingpong = GroupModel(groupName: "Ping-Pong", groupLogo: UIImage(named: "pingpong") ?? UIImage())
var russia = GroupModel(groupName: "Russia", groupLogo: UIImage(named: "russia") ?? UIImage())


var groups = [sng, opek, nato, pingpong, russia]
var myGroups = [GroupModel]()

