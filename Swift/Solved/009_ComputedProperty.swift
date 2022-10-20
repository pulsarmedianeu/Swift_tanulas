//
//  ComputedProperty.swift
//  Swift_tanulas
//
//  Created by Orszagh Sandor on 2022. 10. 18..
//

import Foundation

//1

struct Workout {
    let startTime: Date
    let endTime: Date
    
    var timeElapsed: TimeInterval {
        endTime.timeIntervalSince(startTime)
    }
}

func elapsedTime() {
    let start = Date()
    sleep(5)
    let end = Date()
    
    let workout = Workout(startTime: start, endTime: end)
    print(workout.timeElapsed)
}
