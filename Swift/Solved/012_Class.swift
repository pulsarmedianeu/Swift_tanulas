//
//  012_Class.swift
//  Swift_tanulas
//
//  Created by Orszagh Sandor on 2022. 10. 18..
//

import Foundation

//1

class Car {
    var make: String
    var model: String
    var color: String
    
    init(make:String,model:String,color:String) {
        self.make = make
        self.model = model
        self.color = color
    }
    
    convenience init(make:String,model:String) {
        self.init(make: make, model: model, color: "white")
    }
}

class Tesla:Car {
    var range : Double
    
    override init(make:String, model: String, color: String) {
        self.range = 300
        super.init(make: make, model: model, color: color)
    }
}

func makeTesla() {
    let tesla = Tesla(make: "", model: "", color: "")
}

