//
//  ViewController.swift
//  Traffic light
//
//  Created by Olesya Koroleva on 17.08.2021.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    @IBOutlet var showTextButton: UIButton!
    
    private var trafficLight: TrafficLight = .switchedOff
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 60
        yellowView.layer.cornerRadius = 60
        greenView.layer.cornerRadius = 60
        startButton.layer.cornerRadius = 10
        
    }
    
    enum TrafficLight {
        case switchedOff
        case litRed
        case litYellow
        case litGreen
    }
    
    @IBAction func showColorViewPressed() {
        switch trafficLight {
        case .switchedOff:
            redView.alpha = 1
            trafficLight = .litRed
        case .litRed:
            yellowView.alpha = 1
            trafficLight = .litYellow
            redView.alpha = 0.3
        case .litYellow:
            greenView.alpha = 1
            trafficLight = .litGreen
            yellowView.alpha = 0.3
        case .litGreen:
            redView.alpha = 1
            trafficLight = .litRed
            greenView.alpha = 0.3
        }
        
    }
    
    @IBAction func showTextButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        }

}
