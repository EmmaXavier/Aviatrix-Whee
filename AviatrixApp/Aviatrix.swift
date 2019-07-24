//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    
    var data = AviatrixData()
    var author = " "
    var running = false
    var distance = 0
    var location = " "
    
    
    init (authorName: String, currentLocation: String) {
        author = authorName
        location = currentLocation
       
        

    }
    
    func name() {
        print("\(author)")
    }
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        location = destination
         
    
    }
    
    func distanceTo(target : String, location: String)->  Int {
        
        return data.knownDistances[location]![target]!
        
    
        
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
    
    
}
