//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Arvin San Miguel on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    
    let maxAltitude: Double
    var altitude = 0.0
    var inFlight: Bool { return speed > 0 && altitude > 0 }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeoff() {
        if inFlight == false {
            speed = (0.1 * maxSpeed)
            altitude = (0.1 * maxAltitude)
        }
    }
    
    func land() { speed = 0.0; altitude = 0.0 }
    
    func climb() {
        if altitude < maxAltitude && inFlight == true {
            altitude += (0.1 * maxAltitude)
            super.decelerate()
        }
    }
    
    func dive() {
        if altitude > 0 && inFlight == true || altitude > 0 && speed == 0 {
            altitude -= (0.1 * maxAltitude)
            super.accelerate()
        }
    }
    
    func bankRight() {
        if inFlight == true { heading += 45; speed -= (0.1 * speed) }
    }
    
    func bankLeft() {
        if inFlight == true { heading += 315; speed -= (0.1 * speed) }
    }
    
}
