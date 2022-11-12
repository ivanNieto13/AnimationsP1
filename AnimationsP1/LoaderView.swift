//
//  LoaderView.swift
//  AnimationsP1
//
//  Created by Ivan Nieto on 11/11/22.
//

import UIKit
import Lottie

public class LoaderView: UIView {
    public var selectedAnimation: String?
    
    init(selected: String) {
        super.init(frame: CGRectZero)
        selectedAnimation = selected
        commonInit()
    }
    required init? (coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    func commonInit() {
        let animationView = LottieAnimationView(name:
                                                    selectedAnimation!)        
        animationView.frame = CGRect (x: 0, y: 0, width: 500, height: 500)
        animationView.center = self.center
        animationView.animationSpeed=1
        animationView.contentMode = .scaleAspectFill
        self.addSubview(animationView)
        animationView.play()
        animationView.loopMode = .loop
        animationView.translatesAutoresizingMaskIntoConstraints=false
        animationView.centerXAnchor.constraint(equalTo:centerXAnchor).isActive=true
        animationView.centerYAnchor.constraint(equalTo:centerYAnchor).isActive=true
        animationView.widthAnchor.constraint(equalToConstant:500).isActive=true
        animationView.heightAnchor.constraint(equalToConstant:
                                                500) .isActive = true
    }
    
}


