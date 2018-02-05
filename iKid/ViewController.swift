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
    
    
    // Joke Tab One [knock knock flip 4]
    @IBOutlet weak var jokeOneFirst: UIView!
    @IBOutlet weak var jokeOneSecond: UIView!
    @IBOutlet weak var jokeOneThird: UIView!
    @IBOutlet weak var jokeOneFourth: UIView!
    @IBOutlet weak var jokeOneFifth: UIView!
    var flipNum = 0
    
    @IBAction func jokeOneFlip(_ sender: UIButton) {
        var fromView = jokeOneFirst
        var toView = jokeOneSecond
        
        switch flipNum {
        case 0:
            fromView = jokeOneFirst
            toView = jokeOneSecond
            flipNum += 1
        case 1:
            fromView = jokeOneSecond
            toView = jokeOneThird
            flipNum += 1
        case 2:
            fromView = jokeOneThird
            toView = jokeOneFourth
            flipNum += 1
        case 3:
            fromView = jokeOneFourth
            toView = jokeOneFifth
            flipNum += 1
        default: // back to beginning
            fromView = jokeOneFifth
            toView = jokeOneFirst
            flipNum = 0
        }
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
    
    @IBOutlet weak var jokeThreeA: UIView!
    @IBOutlet weak var jokeThreeQ: UIView!
    var threeFlip = false
    
    @IBAction func jokeThreeFlip(_ sender: UIButton) {
        threeFlip = !threeFlip
        let fromView = threeFlip ? jokeThreeQ : jokeThreeA
        let toView = threeFlip ? jokeThreeA : jokeThreeQ
        UIView.transition(from: fromView!, to: toView!, duration: 0.5, options: [.transitionFlipFromRight, .showHideTransitionViews])
    }
    
}

