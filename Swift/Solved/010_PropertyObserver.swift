//
//  010_PropertyObserver.swift
//  Swift_tanulas
//
//  Created by Orszagh Sandor on 2022. 10. 18..
//

import Foundation

//1

struct Website {
    
    init(url:String) {
        
        defer { self.url = url }
        
        self.url = url
    }
    
    var url : String {
        
        didSet {
            url = url.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? url
        }
    }
}

func printUrl() {
    var website = Website(url: "www.hello.com/?proba=sd dfvsv dsv")
    print(website.url)
}

