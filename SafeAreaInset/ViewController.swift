//
//  ViewController.swift
//  SafeAreaInset
//
//  Created by Pisit W on 22/6/2563 BE.
//  Copyright © 2563 blyscuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.additionalSafeAreaInsets.top = 100
        // Do any additional setup after loading the view.
        colorView.setGradientBackground()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close, target: nil, action: nil)
        
        title = "Title"
        
    }

    @IBAction func sliderSlided(_ sender: Any) {
        let top: CGFloat = (CGFloat(200 * ((sender as? UISlider)?.value ?? 1) - 0.5))
        navigationController?.additionalSafeAreaInsets.top = top

    }

    @IBAction func slider2Slided(_ sender: Any) {
        let top: CGFloat = (CGFloat(100 * ((sender as? UISlider)?.value ?? 1)))
        additionalSafeAreaInsets.top = top

    }
}

extension UIView {
    

    func setGradientBackground() {
        let colorTop =  UIColor(red: 0.26, green: 0.40, blue: 0.97, alpha: 1.00)
.cgColor
        let colorBottom = UIColor(red: 0.91, green: 0.58, blue: 0.67, alpha: 1.00)
.cgColor

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.bounds

        self.layer.insertSublayer(gradientLayer, at:0)
    }
}
