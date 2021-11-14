//
//  ViewController.swift
//  Frame&Bounds
//
//  Created by tambanco 🥳 on 14.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let cardView: UIView = {
        let view = UIView()
        view.backgroundColor = .darkGray
        return view
    }()

    // MARK: - Application life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeCardView()
        
    }
    
    override func viewDidLayoutSubviews() {
        calculateFrameSize()
        calculateBoundsSize()
    }
    
    // MARK: - Utils
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
        cardView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 200).isActive = true
        cardView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        cardView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1).isActive = true
        cardView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -200).isActive = true
    }
}
