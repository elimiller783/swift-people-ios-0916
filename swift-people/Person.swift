//
//  Person.swift
//  swift-people
//
//  Created by Elias Miller on 10/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    var name : String
    var ageInYears: Int?
    var skills: [String] = []
    var qualifiedTutor: Bool {
        if skills.count >= 4 {
            return true
        } else {
        return false
    }
    }
    
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    init() {
        self.name = "John Doe"
        self.ageInYears = nil
    }
    
    //Write a method named celebrateBirthday() that returns a String. If the ageInYears property contains nil, it should return a happy-birthday message with the person's name formatted like this for Jenny:
    //HAPPY BIRTHDAY, JENNY!!!
    func celebrateBirthday() -> String {
        if ageInYears == nil {
            return "HAPPY BIRTHDAY, \(name.uppercased())!!!"
        } else {
            ageInYears! += 1
            var ordin = ageInYears!.ordinal()
            return "HAPPY \(ageInYears!)\(ordin.uppercased()) BIRTHDAY, \(name.uppercased())!!!"
       }
}
    func learnSkillBash() {
       if !skills.contains("bash") {
            skills.append("bash")
        }
    }

    func learnSkillXcode() {
        if !skills.contains("Xcode") {
            skills.append("Xcode")
            }

    }


    func learnSkillObjectiveC() {
        if !skills.contains("Objective-C") {
            skills.append("Objective-C")
        }

    }
    func learnSkillSwift() {
        if !skills.contains("Swift") {
            skills.append("Swift")

        }
    }
    func learnSkillInterfaceBuilder() {
        if !skills.contains("Interface Builder") {
            skills.append("Interface Builder")

        }
    }
}
