//
//  002_Array.swift
//  Swift_tanulas
//
//  Created by Orszagh Sandor on 2022. 09. 22..
//

import Foundation
var numbers = [1,2,3,4]
var szoveg = ["egy", "kettő", "három"]


extension Array {
    public init(repeatingIndividuals: @autoclosure() -> Element, count: Int) {
        self = (0 ..< count).map { _ in repeatingIndividuals() }
    }
}

//1
func arrayFor() {
    _ = numbers.enumerated().map { (index,number) in
        print("\(index) \(number)")
    }
}


//2

func arrayRandom() {
    
    /*
     let WRONG_sameObjects = Array(repeating: Int.random(in: 1...1000), count: 100)
     
     
     RIGHT
     extension Array {
         public init(repeatingIndividuals: @autoclosure() -> Element, count: Int) {
             self = (0 ..< count).map { _ in repeatingIndividuals() }
         }
     }
    */
    
    let rnd = Array(repeatingIndividuals: Int.random(in: 1...1000), count: 5)
    print(rnd)
    
}


//3
func arrayZip() {


    let diff = numbers.count - szoveg.count

    switch diff.signum() {
        
        case -1: numbers = numbers + Array(repeating: 0, count: abs(diff))
        case 1 : szoveg = szoveg + Array(repeating:"", count: abs(diff))
        default: break
    }
    
    let zipped = Array(zip(numbers,szoveg))
    print(zipped)
    
}

//4

func arrayMakeIterator() {
    

    let names = ["1","2","3"]
    var namesIterator = names.makeIterator()

    while let name = namesIterator.next() {
        print(name)
    }
    
}
