//
//  ViewController.swift
//  TutorialBullsEye
//
//  Created by Yang Lu on 2018-11-02.
//  Copyright © 2018 IdiotLeon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 50

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func showAlert(){
        
        let message = "The value of the slider is now: \(currentValue)"
        
        let alert = UIAlertController(title: "Hello World!", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider){
        print("The value of the slider is now: \(slider.value)")
        let roundedValue = slider.value.rounded()
        print("The rounded value of the slider is now: \(roundedValue)")
        currentValue = Int(roundedValue)
    }
}

