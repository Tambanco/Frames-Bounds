//
//  ViewController.swift
//  Frame&Bounds
//
//  Created by tambanco 🥳 on 14.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let myLayer = CATextLayer()
    
    let cardView: UIView = {
        let view = UIView()
        view.backgroundColor = .darkGray
        return view
    }()

    // MARK: - Application life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeCardView()
        addSublayer()
        
    }
    
    override func viewDidLayoutSubviews() {
        calculateFrameSize()
        calculateBoundsSize()
        translateCardView()
    }
    
    // MARK: - Utils
    
    private func addSublayer() {
        myLayer.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
        myLayer.backgroundColor = UIColor.blue.cgColor
        myLayer.string = "Text"
        cardView.layer.addSublayer(myLayer)
    }
    
    private func  translateCardView() {
        myLayer.transform = CATransform3DMakeTranslation(20, 20, 0)
    }
    
    private func calculateFrameSize() {
        let frameWidth = cardView.frame.size.width
        let frameHeight = cardView.frame.size.height
        
        print("Frame width: \(frameWidth)", "Frame height: \(frameHeight)")
    }
    
    private func calculateBoundsSize() {
        let boundsWidth = cardView.bounds.size.width
        let boundsHeight = cardView.bounds.size.height
        
        print("Bounds width: \(boundsWidth)", "Bounds height: \(boundsHeight)")
    }
    
    // MARK: - Constraints
    private func initializeCardView() {
        self.view.addSubview(cardView)
        
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.5).isActive = true
        cardView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5).isActive = true
        cardView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        cardView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
}
