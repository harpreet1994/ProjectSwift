//
//  Passenger.swift
//  Airline
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Passenger: IDisplay{
    var passengerID : Int?
    var passportNo : String?
    var passengerName : String?
    var mobile : String?
    var email : String?
    var address : String?
    var birthDate : String?
    
    //default initializer
    init(){
        self.passengerID = 0
        self.passportNo = ""
        self.passengerName = ""
        self.mobile = ""
        self.email = ""
        self.address = ""
        self.birthDate = ""
    }
    
    //parameterized initializer
    
    init(passengerID : Int,  passportNo : String, passengerName: String, mobile: String, email: String, address: String, birthDate: String ){
        
        self.passengerID = passengerID
        self.passportNo = passportNo
        self.passengerName = passengerName
        self.mobile = mobile
        self.email = email
        self.address = address
        self.birthDate = birthDate
    }
    
    //stored property
    
    var PassengerID : Int? {
        get{return self.passengerID}
        set{self.passengerID = newValue}
    }
    var PassportNo: String? {
        get{return self.passportNo}
        set{self.passportNo = newValue}
    }
    
    var PassengerName: String? {
        get{return self.passengerName}
        set{self.passengerName = newValue}
    }
    var Mobile: String? {
        get{return self.mobile}
        set{self.mobile = newValue}
    }
    var  Email : String? {
        get{return self.email}
        set{self.email = newValue}
    }
    var  Address : String? {
        get{return self.address}
        set{self.address = newValue}
    }
    
    
    var  BirthDate : String? {
        get{return self.birthDate}
        set{self.birthDate = newValue}
    }    
    
    
    func displayData() -> String{
        var returnData = ""
        
        if self.passengerID != nil {
            returnData += " \n Passenger ID : \(self.passengerID ?? 0)"
        }
        
        if self.passportNo != nil {
            returnData += " \n PassportNo : \(self.passportNo ?? "unknown")"
        }
        if self.passengerName != nil {
            returnData += " \n PassengerName : \(self.passengerName ?? "unknown")"
        }
        if self.mobile != nil {
            returnData += " \n Mobile : \(self.mobile ?? "unknown")"
        }
        if self.email != nil {
            returnData += " \n Passenger Email : \(self.email ?? "hbajwa@gmail.com")"
        }
        if self.address != nil {
            returnData += " \n PassengerAddress : \(self.address ?? "unknown")"
        }
        if self.birthDate != nil {
            returnData += " \n BirthDate: \(String(describing: self.birthDate ?? ""))"
        }
        
        return returnData
    }
    func registerUser(){
        print("Enter Passenger Id : ")
        self.passengerID = (Int)(readLine()!)
        print("Enter Passport No : ")
        self.passportNo = readLine()!
        print("Enter Passenger Name : ")
        self.passengerName = readLine()!
        print("Enter Passenger Mobile : ")
        self.mobile = readLine()!
        print("Enter Passenger Email: ")
        self.email = readLine()!
        print("Enter Passenger Address : ")
        self.address = readLine()!
        print("Enter Passenger Date of Birth : ")
        self.birthDate = readLine()!
    }

    
}
