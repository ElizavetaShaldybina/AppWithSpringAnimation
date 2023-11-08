//
//  ViewController.swift
//  AppWithSpringAnimation
//
//  Created by Елизавета Шалдыбина on 07.11.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet weak var springAnimationView: SpringView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "pop"
        springAnimationView.curve = "easeIn"
        springAnimationView.force = 2
        springAnimationView.duration = 1
        springAnimationView.delay = 0.3
        
        springAnimationView.animate()
    }
}

