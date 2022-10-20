//
//  008_Lazy.swift
//  Swift_tanulas
//
//  Created by Orszagh Sandor on 2022. 10. 17..
//

import Foundation


//1

enum Level {
    case easy
    case medium
    case hard
}

struct Exam {
    var level: Level
    
    lazy private(set) var question: [String] = {
        
        // szimuláció mintha API- bol lenne, késleltetjük a választ
        sleep(5)
        
        switch level {
            case .easy: return ["1","2","3"]
            case .medium : return ["11","22","33"]
            case .hard : return ["111","222","333"]
            //default: break
        }
    }()
}


func getLazyExam() {
    var exam = Exam(level: .easy)
    var hardExam = exam
    
    
    // a lazy tulajdonsag miatt ez csak akkor van igy ha az elso felhasznalas elott valtoztatunk
    hardExam.level = .hard
    print(exam.question)
    //hardExam.level = .hard
    print("hardexam:\(hardExam.level)")
    print(hardExam.question)
    print("wait 1 minit...")
    sleep(1)
    print(exam.question)
}
