//
//  ViewController.swift
//  FunFacts
//
//  Created by Andrew Dell on 5/17/17.
//  Copyright © 2017 Andrew Dell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    // Create instances of the FactProvider & colorProvider structs
    let factProvider = FactProvider()
    let colorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Display random fact
        funFactLabel.text = factProvider.randomFact()
        
    }
    
    @IBAction func showFact() {
        // Generate new fact
        funFactLabel.text = factProvider.randomFact()
        
        // Generate new color
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        
        // Change button color
        funFactButton.tintColor = randomColor
        
    }
    
}
