//
//  ViewController.swift
//  KeyLock08
//
//  Created by Ryo on 2022/10/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleDisplay: UILabel!
    @IBOutlet weak var countADisplay: UILabel!
    @IBOutlet weak var countBDisplay: UILabel!
    @IBOutlet weak var countCDisplay: UILabel!
    
    @IBOutlet weak var addAButton: UIButton!
    @IBOutlet weak var subAButton: UIButton!
    
    @IBOutlet weak var addBButton: UIButton!
    @IBOutlet weak var subBButton: UIButton!
    
    @IBOutlet weak var addCButton: UIButton!
    @IBOutlet weak var subCButton: UIButton!
    
    @IBOutlet weak var lockButton: UIButton!
    @IBOutlet weak var openButton: UIButton!
    
    var answer = 777
    var countA = 0
    var countB = 0
    var countC = 0
    
    var countDown = 10
    var hintText = ""
    
    //画面の生成が終わった後に呼び出される
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        answer = Int.random(in: 0..<999)
        lockButton.isHidden = true
    }

    @IBAction func tappedAddA(_ sender: UIButton) {
        countA += 1
        if countA > 9{
            countA = 0
        }
        updateDisplay()
    }
    
    @IBAction func tappedSubA(_ sender: UIButton) {
        countA -= 1
        if countA < 0{
            countA = 0
        }
        updateDisplay()
    }
    
    @IBAction func tappedAddB(_ sender: Any) {
        countB += 1
        if countB > 9{
            countB = 0
        }
        updateDisplay()
    }
    
    @IBAction func tappedSubB(_ sender: Any) {
        countB -= 1
        if countB < 0{
            countB = 0
        }
        updateDisplay()
    }
    
    @IBAction func tappedAddC(_ sender: Any) {
        countC += 1
        if countC > 9{
            countC = 0
        }
        updateDisplay()
    }
    
    @IBAction func tappedSubC(_ sender: Any) {
        countC -= 1
        if countC < 0{
            countC = 0
        }
        updateDisplay()
    }
    
    
    @IBAction func tappedLock(_ sender: Any) {
    }
    
    @IBAction func tappedOpen(_ sender: Any) {
        countDown -= 1
        let checkNumber = (countA * 100) + (countB * 10) + countC
        if checkNumber == answer {
            titleDisplay.text = "Open!"
            lockButton.isHidden = true
            openButton.isHidden = true
        }
    }
    
    func updateDisplay() {
        countADisplay.text = String(countA)
        countBDisplay.text = String(countB)
        countCDisplay.text = String(countC)
    }
}

