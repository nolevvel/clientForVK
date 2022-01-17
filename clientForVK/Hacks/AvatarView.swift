//
//  AvatarView.swift
//  clientForVK
//
//  Created by Николай Трушин on 16.01.2022.
//

import UIKit

class AvatarImage: UIImageView {
    @IBInspectable var borderColor: UIColor = .gray
    @IBInspectable var borderWidth: CGFloat = 1
    
    override func awakeFromNib() {
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = true
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
    }
}

class AvatarBackShadow: UIView {
    @IBInspectable var shadowColor: UIColor = .lightGray
    @IBInspectable var shadowOffset: CGSize = CGSize(width: 4.0, height: 4.0)
    @IBInspectable var  shadowOpacity: Float = 1
    @IBInspectable var shadowRadius: CGFloat = 2
    
    override func awakeFromNib() {
        self.backgroundColor = .clear
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowRadius = shadowRadius
    }
}


//@IBDesignable class UserAvatar: UIView {
//
//    var logoView = UIImageView()
//    let shadowView = UIView()
//    @IBInspectable var shadowRadiu: CGFloat = 25.0 {
//        didSet {
//            setNeedsDisplay()
//        }
//    }
//    @IBInspectable var shadowBlur: CGFloat = 6.0 {
//        didSet {
//            setNeedsDisplay()
//        }
//    }
//    @IBInspectable var shadowOpacity: Float = 0.3 {
//        didSet {
//            setNeedsDisplay()
//        }
//    }
//    @IBInspectable var shadowOffset: CGSize = CGSize(width: 0, height: 5) {
//        didSet {
//            setNeedsDisplay()
//        }
//    }
//    @IBInspectable var shadowColor: UIColor = UIColor.black {
//        didSet {
//            setNeedsDisplay()
//        }
//    }
//    override func draw(_ rect: CGRect) {
//        super.draw(rect)
//        logoView.frame = rect
//        logoView.layer.cornerRadius = shadowRadiu
//        logoView.clipsToBounds = true
//        logoView.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
//        shadowView.frame = rect
//        shadowView.clipsToBounds = false
//        shadowView.layer.shadowColor = shadowColor.cgColor
//        shadowView.layer.shadowOpacity = shadowOpacity
//        shadowView.layer.shadowOffset = shadowOffset
//        shadowView.layer.shadowRadius = shadowBlur
//        shadowView.layer.shadowPath = UIBezierPath(roundedRect: shadowView.bounds, cornerRadius: shadowRadiu).cgPath
//        shadowView.addSubview(logoView)
//        self.addSubview(shadowView)
//    }
//}
