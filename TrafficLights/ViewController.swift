//
//  ViewController.swift
//  TrafficLights
//
//  Created by Konstantin Korchak on 02.03.2022.
//

import UIKit

enum CurrentColor {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var yellowColor: UIView!
    @IBOutlet weak var greenColor: UIView!
    
    @IBOutlet weak var button: UIButton!
    
    private var currentColor = CurrentColor.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 10
        
        redColor.alpha = lightIsOff
        yellowColor.alpha = lightIsOff
        greenColor.alpha = lightIsOff
    }
    
    override func viewDidLayoutSubviews() {
        greenColor.layer.cornerRadius = greenColor.frame.width / 2
        yellowColor.layer.cornerRadius = greenColor.frame.width / 2
        redColor.layer.cornerRadius = greenColor.frame.width / 2
    }
    
    @IBAction func changeColorButtonPress() {
        if button.currentTitle == "START" {
            button.setTitle("NEXT", for: .normal)
        }
        
        switch currentColor {
        case .red:
            redColor.alpha = lightIsOn
            greenColor.alpha = lightIsOff
            currentColor = .yellow
        case .yellow:
            yellowColor.alpha = lightIsOn
            redColor.alpha = lightIsOff
            currentColor = .green
        case .green:
            greenColor.alpha = lightIsOn
            yellowColor.alpha = lightIsOff
            currentColor = .red
        }
    }
}

