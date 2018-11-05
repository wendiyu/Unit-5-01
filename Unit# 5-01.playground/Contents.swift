

// Created on: November-03-2018
// Created by: Wendi Yu
// Created for: ICS3U
// This program is the UIKit solution for calculate random number average 
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var counter = 0
    var answer = 0
    var average = 0
    
    let introLable = UILabel()
    let displayLable = UILabel()
    let checkNumberLable = UILabel()
    let answerLable = UILabel()
    let answerButton = UIButton()
    
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        introLable.text = "Click the calculate button, we will generate 10 random numbers and calculate the average to you."
        view.addSubview(introLable)
        introLable.translatesAutoresizingMaskIntoConstraints = false
        introLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        introLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // display 10 random numbers 
        view.addSubview(displayLable)
        displayLable.translatesAutoresizingMaskIntoConstraints = false
        displayLable.topAnchor.constraint(equalTo: introLable.topAnchor, constant: 40).isActive = true
        displayLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerButton.setTitle("Calculate", for: .normal)
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(averageOfRandomNumber), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.topAnchor.constraint(equalTo: displayLable.bottomAnchor, constant: 10).isActive = true
        answerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        view.addSubview(answerLable)
        answerLable.translatesAutoresizingMaskIntoConstraints = false
        answerLable.topAnchor.constraint(equalTo: answerButton.bottomAnchor, constant: 20).isActive = true
        answerLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    @objc func averageOfRandomNumber() {
        // show answers 
        
        var anArray : [Int] = []
        
        for counter in 1 ... 10 {
            let randomNumber : Int = Int(arc4random_uniform(100) + 1)
            anArray.append(randomNumber)
            displayLable.text = ("There are 10 random numbers: \(anArray)")
            answer = answer + randomNumber
        }
        
        // calculate the average of 10 number
        average = answer / 10
        answerLable.text = ("The average is: \(average)")
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
