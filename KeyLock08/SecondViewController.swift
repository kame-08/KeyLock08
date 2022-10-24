//
//  SecondViewController.swift
//  KeyLock08
//
//  Created by Ryo on 2022/10/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var countDownDisplay: UILabel!
    @IBOutlet weak var hintDisplay: UILabel!
    @IBOutlet weak var tryButton: UIButton!
    @IBOutlet weak var gameOverButton: UIButton!
    
    var countDoun = 0
    var hintText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameOverButton.isHidden = true
        animationFont()
        hintDisplay.text = hintText
        
        if countDoun == 0 {
            gameOverButton.isHidden = false
        }
        
    }
    
    func animationFont() {
        let fontSize = 100.0
        countDownDisplay.text = String(countDoun)
        countDownDisplay.font.withSize(CGFloat(fontSize))
    }
    
    @IBAction func tappedTry(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tappedGameOver(_ sender: UIButton) {
        exit(0)
    }
    
}
