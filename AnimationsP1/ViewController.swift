//
//  ViewController.swift
//  AnimationsP1
//
//  Created by Ivan Nieto on 11/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let items = ["pizza", "orange", "sushi"]
    private var selectedItem = "orange"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let segmentedControl = UISegmentedControl (items: ["Pizza","Orange","Sushi"])
        
        segmentedControl.frame = CGRect(x: 10, y: 60, width:self.view.bounds.width - 20, height: 30)
        
        segmentedControl.selectedSegmentIndex = 1
        selectedItem = items[segmentedControl.selectedSegmentIndex]
        segmentedControl.addTarget(self, action: #selector(self.segmentedValueChanged(_:)), for: .valueChanged)
        self.view.addSubview(segmentedControl)
        loaderView()
    }
    
    @objc func segmentedValueChanged(_ sender:UISegmentedControl!) {
        selectedItem = items[sender.selectedSegmentIndex]
        loaderView()
    }
    
    private func loaderView() {
        for view in view.subviews {
            if view is LoaderView {
                view.removeFromSuperview()
            }
        }
        let animation = LoaderView(selected: selectedItem)
        animation.frame.size = CGSize(width: 400, height: 400)
        animation.center = self.view.center
        view.addSubview(animation)
    }
    
}

