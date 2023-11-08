//
//  ViewController.swift
//  AppWithSpringAnimation
//
//  Created by Елизавета Шалдыбина on 07.11.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    var animations = Animation.getAnimation()
    
    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    @IBOutlet weak var animationButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getInfoAboutAnimation()
    }

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = animations.animation
        springAnimationView.curve = animations.curve
        springAnimationView.force = CGFloat(animations.force)
        springAnimationView.duration = CGFloat(animations.duration)
        springAnimationView.delay = CGFloat(animations.delay)
        
        springAnimationView.animate()
        
        animations = Animation.getAnimation()
        
        getInfoAboutAnimation()
    }
    
    func getInfoAboutAnimation() {
        presetLabel.text = animations.animation
        curveLabel.text = animations.curve
        forceLabel.text = "\(animations.force)"
        durationLabel.text = "\(animations.duration)"
        delayLabel.text = "\(animations.delay)"
        
        animationButton.setTitle("Run \(animations.animation)", for: .normal)
    }
}
