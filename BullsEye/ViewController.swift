//
//  ViewController.swift
//  BullsEye
//
//  Created by User on 11/17/15.
//  Copyright © 2015 Elijah Buters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    var currentValue: Int = 50
    var targetValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderMoved(sender: UISlider) {
        
        currentValue = lroundf(slider.value)
        targetValue = 1 + Int(arc4random_uniform(100))

    }
    
    @IBAction func showAlert(sender: UIButton) {
        
        let message = "The value of the slider is \(currentValue)"
        let alert = UIAlertController(title: "Hello, world", message: message, preferredStyle: .Alert)
        let action = UIAlertAction(title: "Ok", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }


}

