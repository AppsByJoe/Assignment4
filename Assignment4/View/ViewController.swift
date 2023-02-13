//
//  ViewController.swift
//  Assignment4
//
//  Created by Hronek Joseph on 2/12/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var choiceDescription: UILabel!
    @IBOutlet weak var buttonChoiceOne: UIButton!
    @IBOutlet weak var buttonChoiceTwo: UIButton!
    
    var storyLogic = StoryLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func pathChosen(_ sender: UIButton) {
        let userChoice = sender.titleLabel!.text!
        sender.backgroundColor = UIColor.red
        storyLogic.getNextIndex(userChoice)
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        choiceDescription.text = storyLogic.getNextChoice()
        buttonChoiceOne.setTitle(storyLogic.getChoiceOne(), for: .normal)
        buttonChoiceTwo.setTitle(storyLogic.getChoiceTwo(), for: .normal)
        buttonChoiceOne.backgroundColor = UIColor.clear
        buttonChoiceTwo.backgroundColor = UIColor.clear
    }
}
