//
//  ViewController.swift
//  iKid
//
//  Created by Benny on 2/3/18.
//  Copyright © 2018 Benny Souriyadeth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    // Joke Tab One
    @IBOutlet weak var jokeOneA: UIView!
    @IBOutlet weak var jokeOneQ: UIView!
    var oneFlip = false

    @IBAction func jokeOneQF(_ sender: UIButton) {
        oneFlip = !oneFlip // sets to opposite boolean
        let fromView = oneFlip ? jokeOneQ : jokeOneA
        let toView = oneFlip ? jokeOneA : jokeOneQ
        UIView.transition(from: fromView!, to: toView!, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews])
    }
    
    // Joke Tab Two
    @IBOutlet weak var jokeTwoA: UIView!
    @IBOutlet weak var jokeTwoQ: UIView!
    var twoFlip = false
    
    @IBAction func jokeTwoFlip(_ sender: UIButton) {
        twoFlip = !twoFlip
        let fromView = twoFlip ? jokeTwoQ : jokeTwoA
        let toView = twoFlip ? jokeTwoA : jokeTwoQ
        UIView.transition(from: fromView!, to: toView!, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews])
        
    }
    
    
    // Joke Tab Three
    
}

