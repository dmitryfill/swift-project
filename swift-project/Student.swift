//
//  Student.swift
//  swift-project
//
//  Created by Dmitriy Filyushin on 05/04/2019.
//  Copyright © 2019 MashaStudio. All rights reserved.
//

import Foundation

class Student {
    let fName: String
    let lName: String
    let yob: Int
    
    init(firstName: String, lastName: String, yearofBirth: Int) {
        self.fName = firstName
        self.lName = lastName
        self.yob = yearofBirth
    }
    
    func getAge() -> Int {
        let currentYear = Calendar.current.component(Calendar.Component.year, from: Date())
        
        return currentYear - self.yob
    }
    
    func getFullName() -> String {
        return "\(self.fName) \(self.lName)"
    }
}
