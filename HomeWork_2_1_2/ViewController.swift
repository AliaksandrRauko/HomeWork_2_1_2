//
//  ViewController.swift
//  HomeWork_2_1_2
//
//  Created by Aliaksandr Rauko on 8.12.21.
//

import UIKit

enum Colours {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    private var signColour = Colours.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        redView.layer.cornerRadius = 42
        redView.layer.masksToBounds = false
        yellowView.layer.cornerRadius = 42
        yellowView.layer.masksToBounds = false
        greenView.layer.cornerRadius = 42
        greenView.layer.masksToBounds = false
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
    }

    @IBAction func startPressed(_ sender: UIButton) {
        
        var secondStart = false
        
        if !secondStart {
            startButton.setTitle("Next", for: .normal)
        }
        
        switch signColour {
        case .red:
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
            signColour = .yellow
            secondStart = true

        case .yellow:
            redView.alpha = 0.3
            yellowView.alpha = 1
            greenView.alpha = 0.3
            signColour = .green

        case .green:
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1
            signColour = .red
    
        }
                
    }
}

