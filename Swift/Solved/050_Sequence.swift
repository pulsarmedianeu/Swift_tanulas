//
//  Sequence.swift
//  Swift_tanulas
//
//  Created by Orszagh Sandor on 2022. 09. 30..
//

import Foundation

//050_Sequence
    //var updown = UpDown(finish: 10)
    //for u in updown { print(u) }

struct Countdown : Sequence {
    
    let start :Int
    
    func makeIterator() -> some IteratorProtocol {
        return CountdownIterator(self)
    }
}

struct CountdownIterator :IteratorProtocol {
    
    let countdown :Countdown
    var currentValue :Int = 0
    
    init(_ countdown :Countdown) {
        self.countdown = countdown
        self.currentValue = countdown.start
    }
    
    mutating func next() -> Int? {
        
        if currentValue > 0 {
            
            let value = currentValue
            currentValue -= 1
            return value
            
        } else { return nil }
        
    }
}

