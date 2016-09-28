//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Arvin San Miguel on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double = 0
    var heading: Double { didSet { if heading > 360 { heading = abs(360-heading) } } }
        
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
        self.heading = 0
    }
    
    func goFast() { speed = maxSpeed }
    func halt() { speed = 0 }
    func accelerate() { if speed < maxSpeed { speed += (0.1 * maxSpeed) } }
    func decelerate() { if speed > 0 { speed -= (0.1 * maxSpeed) } }
    
    func turnRight() {
        if speed > 0 {
            heading += 90
            speed /= 2
        }
    }
    
    func turnLeft() {
        if speed > 0 {
            heading += 270
            speed /= 2
        }
    }
}
