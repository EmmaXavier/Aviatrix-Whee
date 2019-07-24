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
    var distanceTraveled = 0
    var fuelLevel = 5000.0
    var maxFuel = 5000.0
    var milesPerGallon = 0.4
    var fuelCost = 0.0
    var fuelFilled = 0.0
    
    
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
    
    func fuelPrice() {
        fuelCost = data.fuelPrices[location]!
    }
    
    func refuel()-> Double {
        let fuelFilled = maxFuel - fuelLevel
        fuelLevel = maxFuel
        return fuelFilled 
        
        //line of code that refills the tank to max level
        
    }
    
    
    func flyTo(destination : String) {
        distanceTraveled += data.knownDistances[location]![destination]!
        location = destination
        fuelLevel -= Double(distanceTraveled)/milesPerGallon
    }
    
    
    func distanceTo(target : String, location: String)->  Int {
        
        return data.knownDistances[location]![target]!
        
    
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
    
    
}
