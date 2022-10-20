//
//  005_InOutParameter.swift
//  Swift_tanulas
//
//  Created by Orszagh Sandor on 2022. 10. 07..
//

import Foundation

struct UserO {
    var userID :Int?
    let name   :String
}

func saveUserO(_ user : inout UserO){
    user.userID = 100
}

func printUser() {
    
    var user = UserO(name: "Jhone Doe")
    saveUserO(&user)
    print(user)
}

