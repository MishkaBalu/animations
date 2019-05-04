//
//  LaunchScreenViewController.swift
//  animations
//
//  Created by leonid.shkolnyk on 5/4/19.
//  Copyright © 2019 leonid.shkolnyk. All rights reserved.
//

import UIKit
import Lottie

class WellcomeScreenViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var loadingAnimationView: AnimationView!
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        configureLoadingAnimation()
        loadingAnimationView.play()
    }
    
    // MARK: UI configuration methods
    
    func configureLoadingAnimation() {
        loadingAnimationView.animation = Animation.named("loading_animation")
        loadingAnimationView.loopMode = .loop
    }
}
