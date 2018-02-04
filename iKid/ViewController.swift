//
//  ViewController.swift
//  iKid
//
//  Created by Benny on 2/3/18.
//  Copyright © 2018 Benny Souriyadeth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var jokeOneA: UIView!
    @IBOutlet weak var jokeOneQ: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func jokeOneQF(_ sender: UIButton) {
        UIView.transition(from: jokeOneQ, to:  jokeOneA, duration: 0.5, options: .transitionFlipFromRight)
    }
    

    
//               UIView.transition(from: jokeOneQ, to: jokeOneA, duration: 0.5, options: .transitionFlipFromRight)

}

