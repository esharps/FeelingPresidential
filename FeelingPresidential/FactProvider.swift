//
//  FactProvider.swift
//  FeelingPresidential
//
//  Created by Emily Sharp on 1/10/17.
//  Copyright © 2017 Emily Sharp. All rights reserved.
//

import GameKit

struct FactProvider {
  
    let presidentialFacts: [String] = getPresidentialFacts()
    
    func getRandomFact() -> String {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: getPresidentialFacts().count)
        return presidentialFacts[randomNumber]
    }
}

func getPresidentialFacts() -> [String] {
    
    var myFacts: [String] = []
    
    do {
        if let path = Bundle.main.path(forResource: "facts", ofType: "txt") {
            
            let data = try String(contentsOfFile: path, encoding: .utf8)
            myFacts = data.components(separatedBy: .newlines)
            return myFacts
        }
    } catch let err as NSError {
        print (err)
    }
    return myFacts
}
    
