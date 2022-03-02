//
//  ViewController.swift
//  TrafficLights
//
//  Created by Konstantin Korchak on 02.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var yellowColor: UIView!
    @IBOutlet weak var greenColor: UIView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let viewWidth = redColor.bounds.width
        redColor.layer.cornerRadius = viewWidth / 2
        yellowColor.layer.cornerRadius = viewWidth / 2
        greenColor.layer.cornerRadius = viewWidth / 2
        redColor.alpha = 0.3
        yellowColor.alpha = 0.3
        greenColor.alpha = 0.3
        button.layer.cornerRadius = 10
    }
    
    @IBAction func changeColorButtonPress() {
        if yellowColor.alpha + greenColor.alpha + redColor.alpha < 1 {
            button.setTitle("NEXT", for: .normal)
            redColor.alpha = 1
        } else if redColor.alpha >= 1 {
            redColor.alpha = 0.3
            yellowColor.alpha = 1
        } else if yellowColor.alpha >= 1 {
            yellowColor.alpha = 0.3
            greenColor.alpha = 1
        } else {
            greenColor.alpha = 0.3
            redColor.alpha = 1
        }
    }
}

