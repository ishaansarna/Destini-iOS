//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    var choice1: String = ""
    var choice2: String = ""

    func updateScreen() {
        let questionTitle = storyBrain.getTitle()
        choice1 = storyBrain.getChoice1()
        choice2 = storyBrain.getChoice2()
        storyLabel.text = questionTitle
        choice1Button.setTitle(choice1, for: .normal)
        choice2Button.setTitle(choice2, for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateScreen()
    }

    
    @IBAction func makeChoice(_ sender: UIButton) {
        if sender.currentTitle == choice1 {
            storyBrain.chooseOption(choice: 1)
            updateScreen()
        } else if sender.currentTitle == choice2 {
            storyBrain.chooseOption(choice: 2)
            updateScreen()
        }
    }
    
}

