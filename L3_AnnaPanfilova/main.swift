//
//  main.swift
//  L3_AnnaPanfilova
//
//  Created by Anna on 24.07.2020.
//  Copyright © 2020 Anna. All rights reserved.
//

import Foundation

enum Color {
    case red, blue, pink, magenta, yellow, violet
}

enum CarManipulations {
    case srartEngine, stopEngine, openWindow, closeWindow, putToTrunk(volume: Double), getFromTrunk(volume: Double), changeColor(color: Color)
}

struct SportCar {
    let brand: String
    let model: String
    var color: Color
    let volume: Double
    let maxSpeed: Double
    let horsePower: Int
    let buildYear: Int
    let trunkSize: Double
    var engineStarted: Bool
    var windowOpened: Bool
    var trunkSizeUsed: Double
    
    mutating func manipulateCar(manipulation: CarManipulations) {
        switch manipulation {
            
        case .srartEngine:
            engineStarted = true
        case .stopEngine:
            engineStarted = false
        case .openWindow:
            windowOpened = true
        case .closeWindow:
            windowOpened = false
        case .putToTrunk(volume: let volume):
            if trunkSize <= trunkSizeUsed + volume {
                trunkSizeUsed += volume
            }
        case .getFromTrunk(volume: let volume):
            if trunkSizeUsed >= volume {
                trunkSizeUsed -= volume
            }
        case .changeColor(color: let color):
            self.color = color
        }
    }
    
    func printParams() {
        print(self)
    }
}

struct TrunkCar {
    let brand: String
    let model: String
    var color: Color
    let volume: Double
    let buildYear: Int
    let trunkSize: Double
    var engineStarted: Bool
    var windowOpened: Bool
    var trunkSizeUsed: Double
    
    mutating func manipulateCar(manipulation: CarManipulations) {
        switch manipulation {
            
        case .srartEngine:
            engineStarted = true
        case .stopEngine:
            engineStarted = false
        case .openWindow:
            windowOpened = true
        case .closeWindow:
            windowOpened = false
        case .putToTrunk(volume: let volume):
            if trunkSize <= trunkSizeUsed + volume {
                trunkSizeUsed += volume
            }
        case .getFromTrunk(volume: let volume):
            if trunkSizeUsed >= volume {
                trunkSizeUsed -= volume
            }
        case .changeColor(color: let color):
            self.color = color
        }
    }
    
    func printParams() {
        print(self)
    }
}

var maz = TrunkCar(brand: "MAZ", model: "456", color: .blue, volume: 6.0, buildYear: 2000, trunkSize: 12.0, engineStarted: false, windowOpened: false, trunkSizeUsed: 6.0)

var kamaz = TrunkCar(brand: "KAMAZ", model: "1102", color: .red, volume: 6.5, buildYear: 2005, trunkSize: 16.0, engineStarted: false, windowOpened: false, trunkSizeUsed: 0.0)

var lada = SportCar(brand: "VAZ", model: "Kalina Sport", color: .yellow, volume: 2.0, maxSpeed: 300, horsePower: 250, buildYear: 2018, trunkSize: 0.5, engineStarted: true, windowOpened: true, trunkSizeUsed: 0.05)

var ferrari = SportCar(brand: "Ferrari", model: "Portofino", color: .magenta, volume: 5.0, maxSpeed: 350, horsePower: 500, buildYear: 2019, trunkSize: 0.3, engineStarted: true, windowOpened: true, trunkSizeUsed: 0.01)

maz.manipulateCar(manipulation: .openWindow)
lada.manipulateCar(manipulation: .changeColor(color: .violet))
kamaz.manipulateCar(manipulation: .putToTrunk(volume: 16.0))
ferrari.manipulateCar(manipulation: .stopEngine)

maz.printParams()
lada.printParams()
kamaz.printParams()
ferrari.printParams()
