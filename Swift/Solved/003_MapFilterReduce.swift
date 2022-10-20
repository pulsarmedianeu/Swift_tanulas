//
//  003_MapFilterReduce.swift
//  Swift_tanulas
//
//  Created by Orszagh Sandor on 2022. 09. 23..
//

import Foundation

//1
func simpleFilter100() {

    let nums = Array(1...100)

    let hundred = nums.filter{ num in
        
        return num == 100
    }
    
    print(hundred)
}


//2

func LazyFilterMap() {

    let lazyNumbers = Array(1...5000)

    let filteredNumbers = lazyNumbers.lazy.filter { number -> Bool in
        
        //print("\(number) filter")
        return number % 2 == 0
    }.map{ num -> String in
        
        //print("\(num) map")
        return "filename_\(num)"
    }
    
    let sufixed = filteredNumbers.suffix(3)
    
    sufixed.forEach { filename in
        print(filename)
    }
}

//3

func simpleReduce() {
    
    let arr = Array(1...5000)
    
    let sum = arr.reduce(0,+)
    print(sum)
}



//4

struct Item {
    
    let name : String
    let price : Int
}

struct Cart {
    
    private(set) var items :[Item]
    
    init() {
        items = []
    }
    
    mutating func addItem(_ item :Item) {
        items.append(item)
    }
    
    var total :Int {
        
        items.reduce(0) {(value, item)->Int in
            return value + item.price
        }
    }
}

//5

func reduceInto() {

    let ratings = [1,1,2,2,3,1,2,3,5,4,3,5,5,2,1,1]
    
    let results = ratings.reduce(into:[:]) { (results :inout [String:Int], rating) in
        
        switch rating {
            case 1: results["Elegtelen", default:0] += 1
            case 2: results["Megfelelo", default:0] += 1
            case 3: results["Kozepes",   default:0] += 1
            case 4: results["Jo",        default:0] += 1
            case 5: results["Jeles",     default:0] += 1
            default : break
        }
    }
    
    print(results)

}
