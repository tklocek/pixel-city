//
//  PopVC.swift
//  pixel-city
//
//  Created by Tomek Klocek on 2019-11-26.
//  Copyright © 2019 Tomek Klocek. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {
    
    // Outlets
    @IBOutlet weak var popImageView: UIImageView!
    
    // Variables
    var passedImage: UIImage!
    
    
    func initData(forImage image: UIImage){
        self.passedImage = image
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addDoubleTap()
        popImageView.image = passedImage
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }

}
