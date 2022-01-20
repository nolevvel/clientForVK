//
//  TestVC.swift
//  clientForVK
//
//  Created by Николай Трушин on 16.01.2022.
//

import UIKit

final class TestVC: UIViewController {
    //override func loadView() {
    //    self.view = SomeRootView()
    //    self.view.backgroundColor = .systemBackground
    //}
    
    @IBAction func didPressButton() {
        someTransform3D()
    }
    
    private let someView: UIView = SomeRootView(frame: CGRect(x: 130.0, y: 300.0, width: 250.0, height: 250.0))
    private let tapGR = UITapGestureRecognizer()
    private let longPressGR = UILongPressGestureRecognizer()
    private let swipeLeftGR = UISwipeGestureRecognizer()
    private let pinchGR = UIPinchGestureRecognizer()
    private let panGR = UIPanGestureRecognizer()
    private let rotationGR = UIRotationGestureRecognizer()
    
    
    @objc
    private func didTap() {
        print("Pressed")
    }
    
    @objc
    private func didLongTap() {
        print("Long Pressed")
    }
    
    @objc
    private func didSwipe(_ gr: UISwipeGestureRecognizer) {
        switch gr.direction {
        case .right:
            print("Swiped right")
        case .left:
            print("Swiped left")
        case .down:
            print("Swiped down")
        case .up:
            print("Swiped up")
        default:
            print("Swiped none")
        }
        
    }
    
    @objc
    private func didPinch(_ gr: UIPinchGestureRecognizer) {
        switch gr.state {
        case .began:
            print(gr.scale)
        case .changed:
            print(gr.scale)
        case .ended:
            print(gr.scale)
        case .cancelled:
            print(gr.scale)
        default:
            print("Default case at \(#function)")
        }
    }
    
    @objc
    private func didPan(_ gr: UIPanGestureRecognizer) {
        switch gr.state{
        case .began:
            print(gr.location(in: view))
        case .changed:
            print(gr.translation(in: view))
            someView.transform = CGAffineTransform(translationX: gr.translation(in: view).x, y: gr.translation(in: view).y)
//            gr.setTranslation(<#T##translation: CGPoint##CGPoint#>, in: <#T##UIView?#>)
        case .ended:
            print(gr.velocity(in: view))
        case .cancelled:
            print("Cancelled")
        default:
            print("Default case at \(#function)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Begin: ", touches.first?.location(in: view))
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Ended: ", touches.first?.location(in: view))
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Moved: ", touches.first?.location(in: view))
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    private func configView() {
//        someView.addGestureRecognizer(tapGR)
//        someView.addGestureRecognizer(longPressGR)
//        someView.addGestureRecognizer(swipeLeftGR)
//        someView.addGestureRecognizer(pinchGR)
        someView.addGestureRecognizer(panGR)
        
//        longPressGR.minimumPressDuration = 2
//        tapGR.addTarget(self, action: #selector(didTap))
//        longPressGR.addTarget(self, action: #selector(didLongTap))
//        swipeLeftGR.direction = .left
//        swipeLeftGR.addTarget(self, action: #selector(didSwipe(_:)))
//        pinchGR.addTarget(self, action: #selector(didPinch(_:)))
        panGR.addTarget(self, action: #selector(didPan(_:)))
        
        view.addSubview(someView)
        someView.backgroundColor = .gray
        someView.layer.borderColor = UIColor.brown.cgColor
        someView.layer.borderWidth = 5.0
        someView.layer.cornerRadius = someView.frame.height / 2
        //someView.layer.masksToBounds = true
        someView.layer.shadowColor = UIColor.gray.cgColor
        someView.layer.shadowOpacity = 1
        someView.layer.shadowRadius = 5
        someView.layer.shadowOffset = CGSize(width: -10, height: 10)
        someView.clipsToBounds = true
    }
    
    private func someTransform() {
        let translation = CGAffineTransform(translationX: 50, y: -50)
        let scale = CGAffineTransform(scaleX: 0.5, y: 1.3)
        let rotation = CGAffineTransform(rotationAngle: .pi / 4)
        
        someView.transform = translation
//        someView.transform = translation.concatenating(scale).concatenating(rotation)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.someView.transform = scale
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.someView.transform = rotation
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.someView.transform = .identity
        }
    }
    
    private func someTransform3D() {
        let traslation3D = CATransform3DMakeTranslation(10, 20, 30)
        let scale3D = CATransform3DMakeScale(0.5, 1.0, 1.1)
        let rotation3D = CATransform3DMakeRotation(.pi / 4, 0.2, 0.5, 1.0)
        someView.layer.transform = traslation3D
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.someView.layer.transform = scale3D
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.someView.layer.transform = rotation3D
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.someView.transform = .identity
        }
    }

final class SomeRootView: UIView {
    
    override class var layerClass: AnyClass {
        CALayer.self
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        guard let context = UIGraphicsGetCurrentContext() else {return}
        context.setFillColor(UIColor.green.cgColor)
        context.fill(CGRect(x: 100.0, y: 100.0, width: 100.0, height: 100.0))
        
        context.setStrokeColor(UIColor.red.cgColor)
        let path = UIBezierPath.gift().cgPath
        context.addPath(path)
        context.strokePath()
    }
}
}
