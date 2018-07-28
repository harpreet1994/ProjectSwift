//
//  Reservation.swift
//  Airline
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Reservation {
    var resID : Int?
    var resPassengerID : Int?
    var resFlightID : Int?
    var resDescription : String?
    var resMealType : String?
    var resDate : Date?
    var resSeatNo : String?
    var resStatus : Bool?
    
    init(){
        self.resID = 0
        self.resPassengerID = 0
        self.resFlightID = 0
        self.resDescription = "Unknown"
        self.resMealType = "unknown"
        self.resDate = Date()
        self.resSeatNo = "Unknown"
        self.resStatus = false
        
    }
    init(resID : Int,resPassengerID : Int,resFlightID : Int, resDescription : String,resMealType : String,resDate : Date,resSeatNo : String, resStatus : Bool
        ){
        self.resID = resID
        self.resPassengerID = resPassengerID
        self.resFlightID = resFlightID
        self.resDescription = resDescription
        self.resMealType = resMealType
        self.resSeatNo = resSeatNo
        self.resStatus = resStatus
    }
    
    func display() {
        print(self.resID ?? 0)
        print(self.resPassengerID ?? 0)
        print(self.resFlightID ?? 0)
        print(self.resDescription ?? "In progress")
        print(self.resMealType ?? "Vegetarian")
        print(self.resSeatNo ?? "2A")
        print(self.resStatus ?? false)
    }
    
}
