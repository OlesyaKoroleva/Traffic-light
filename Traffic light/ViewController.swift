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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 75
        yellowView.layer.cornerRadius = 75
        greenView.layer.cornerRadius = 75
        
    
        
    }


}

