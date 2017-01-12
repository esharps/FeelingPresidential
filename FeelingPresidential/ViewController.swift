//
//  ViewController.swift
//  FeelingPresidential
//
//  Created by Emily Sharp on 1/10/17.
//  Copyright © 2017 Emily Sharp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var factLabel: UILabel!
    @IBOutlet weak var factButton: UIButton!
    
    let factProvider = FactProvider()
    let colorChanger = BackgroundColorChanger()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        factLabel.text = factProvider.getRandomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        factLabel.text = factProvider.getRandomFact()
        let randomColor = colorChanger.setRandomColor()
        view.backgroundColor = randomColor
        factButton.tintColor = randomColor // Label text is the same color as background text
    }

}

