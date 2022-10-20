//
//  006_Closure.swift
//  Swift_tanulas
//
//  Created by Orszagh Sandor on 2022. 10. 07..
//

import Foundation

//1

var echo: (String)->() = {
    print($0)
}


//2

    func getPosts(completion: @escaping ([String])->()){
     
        var posts : [String] = []
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            
            posts = ["1","jkjkjkj","gmkfghjdsfhklsr"]
            completion(posts)
        }
    }



