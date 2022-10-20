//
//  0001_For.swift
//  Swift
//
//  Created by Orszagh Sandor on 2022. 09. 22..
//

import Foundation

//1
func one_hundred_numbers() {
    
    for (index,value) in (1...100).enumerated() {
        print("\(index) \(value)")
    }
}
    
//2
func hundred_one_numbers() {
       
    for (index,value) in stride(from: 100, through: 1, by: -2).enumerated() {
        print("\(index) \(value)")
    }
}
    
//3

func foreachEmumerated() {
    
    let numbers = Array(1...100)

    numbers.enumerated().forEach { (index,value) in
        
        print("\(index), \(value)")
    }

}
