//
//  BackgroundColorChanger.swift
//  FeelingPresidential
//
//  Created by Emily Sharp on 1/11/17.
//  Copyright © 2017 Emily Sharp. All rights reserved.
//

import UIKit
import GameKit

struct BackgroundColorChanger {
    let colors = [
        UIColor(red: 18/255.0, green: 176/255.0, blue: 210/255.0, alpha: 1.0), // Cobalt blue
        UIColor(red: 64/255.0, green: 191/255.0, blue: 248/255.0, alpha: 1.0), // Sky blue
        UIColor(red: 14/255.0, green: 4/255.0, blue: 121/255.0, alpha: 1.0), // Navy blue
        UIColor(red: 236/255.0, green: 17/255.0, blue: 28/255.0, alpha: 1.0), // Crimson red
        UIColor(red: 220/255.0, green: 94/255.0, blue: 94/255.0, alpha: 1.0), // Terracota
        UIColor(red: 156/255.0, green: 0/255.0, blue: 22/255.0, alpha: 1.0) // Oxblood
    ]
    
    func setRandomColor() -> UIColor {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: colors.count)
        return colors[randomNumber]
    }
}
