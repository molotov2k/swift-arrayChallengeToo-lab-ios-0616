//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

   
    // Create your methods here
    
    func addNameToDeliLine(name:String) -> String {
        
        let greeting: String
        
        switch name {
        case "Billy Crystal":
            deliLine.insert(name, atIndex: 0)
            greeting = "Welcome Billy! You can sit wherever you like."
        case "Meg Ryan":
            deliLine.insert(name, atIndex: 0)
            greeting = "Welcome Meg! You can sit wherever you like."
        default:
            deliLine.append(name)
            if deliLine.count == 1 {
                greeting = "Welcome \(name), you're first in line!"
            } else {
                greeting = "Welcome \(name), you're number \(deliLine.count) in line."
            }
        }
        
        return greeting
    }
    
    
    func nowServing() -> String {
        
        let result: String
        
        if deliLine.isEmpty {
            result = "There is no-one to be served."
        } else {
            let name = deliLine.removeAtIndex(0)
            result = "Now serving \(name)"
        }
        
        return result
    }
    
    
    func deliLineDescription() -> String {
        
        var line = ""
        
        if deliLine.isEmpty {
            line = "The line is currently empty."
        } else {
            for (index, name) in deliLine.enumerate() {
                line += "\(index + 1). \(name)\n"
            }
        }
        
        return line
    }
    
}

