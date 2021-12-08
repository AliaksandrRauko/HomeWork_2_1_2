//
//  ViewController.swift
//  HomeWork_2_1_2
//
//  Created by Aliaksandr Rauko on 8.12.21.
//

import UIKit

enum Colour {
    case green
    case yellow
    case red
}

class ViewController: UIViewController {

    @IBOutlet var greenView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var redView: UIView!
    @IBOutlet var startButton: UIButton!
    
    private var signColour = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        greenView.alpha = 0.3
        yellowView.alpha = 0.3
        redView.alpha = 0.3
        signColour = "green"
    }

    @IBAction func startPressed(_ sender: UIButton) {
        
        var secondStart = false
        
        if !secondStart {
            startButton.setTitle("Next", for: .normal)
        }
        
        switch signColour {
        case "green":
            greenView.alpha = 1
            yellowView.alpha = 0.3
            redView.alpha = 0.3
            signColour = "yellow"
            secondStart = true
        case "yellow":
            greenView.alpha = 0.3
            yellowView.alpha = 1
            redView.alpha = 0.3
            signColour = "red"
        case "red":
            greenView.alpha = 0.3
            yellowView.alpha = 0.3
            redView.alpha = 1
            signColour = "green"
        default:
            break
        }
    }
}

