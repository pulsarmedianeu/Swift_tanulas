//
//  007_Enum.swift
//  Swift_tanulas
//
//  Created by Orszagh Sandor on 2022. 10. 08..
//

import Foundation


//1
enum Primitive {
    case circle(radius :Int)
    case rectangle(rheight :Int, rwidth :Int)
    case triangle(a :Int, b :Int, c :Int)
}

var shapes :[Primitive] = []

func fillPrimitives() {
    shapes.append(Primitive.circle(radius: 10))
    shapes.append(Primitive.rectangle(rheight: 11, rwidth: 11))
    shapes.append(Primitive.triangle(a: 12, b: 12, c: 12))
}

func printShape(_ primitive :Primitive) {
    
    switch primitive {
        
        case let .circle(radius):
            print("Radius: \(radius)")
        case let .rectangle(rheight, rwidth):
            print("Rectangle: \(rheight) , \(rwidth)")
        case let .triangle(a, b, c):
            print("Triangle: \(a) , \(b) , \(c)")
        //default: break
    }
}

func circlePrint(primitive :Primitive) {
    if case let Primitive.circle(radius: radius) = primitive {
        print("Radius: \(radius)")
    }
}

//2

struct Teacher {
    let age :Int
}

struct Student {
    let countCourse :Int
}

enum User {
    case teacher(Teacher)
    case student(Student)
}

var users:[User] = [User.student(Student(countCourse:11)), User.teacher(Teacher(age: 44))]


func printTeacherAndStudent() {
    print(users)
}




//3

enum TemperatureUnit: String {
    case metric = "C"
    case imperial = "F"
}

func getWeatherUrl(unit: TemperatureUnit) -> URL? {
    
    switch unit {
        case .imperial: return URL(string: "www.weather.com/?unit=fahrenheit")
        case .metric: return URL(string:"www.weather.com/?unit=celsius")
        default: break
    }
}

func printWeatherUrl() {
    print(getWeatherUrl(unit: .metric))
}


// 4

enum ImageType {
    case jpg
    case png
    case bmp
    
    init?(rawValue :String) {
        switch rawValue.lowercased() {
            case "jpg", "jpeg": self = .jpg
            case "png": self = .png
            case "bmp", "bitmap": self = .bmp
            default : return nil
        }
    }
}

func getImageExtension(for fileExtension :String)->String {
    
    guard let imageType = ImageType(rawValue: fileExtension) else {
        return "unknowType"
    }
    
    switch imageType {
    case .jpg:
        return "jpg"
    case .png:
        return "png"
    case .bmp:
        return "bmp"
    }
    
}
