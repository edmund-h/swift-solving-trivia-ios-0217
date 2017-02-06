//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    
    
    func solveTrivia(_ trivia: [String : String]) -> String {
        
        for (state, city) in trivia{
            let stateLetters = Array(state.lowercased().characters)
            let cityLetters = Array(city.lowercased().characters)
            var hasSameLetters = true
            for thisLetter in stateLetters {
                
                for thatLetter in cityLetters{
                    hasSameLetters =  (thisLetter == thatLetter )
                    if hasSameLetters { break }
                }
                if hasSameLetters { break }
            }
            if hasSameLetters == false {
                return state
            }
        }
        
        
        return "Hi :D"
        
    }
    
    
    
    
}

