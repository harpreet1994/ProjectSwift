//
//  Flight.swift
//  Airline
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Flight : IDisplay {
    func displayData() -> String {
        var returnData = ""
        
        if self.flightID != nil {
            returnData += "\n Flight ID : \(self.flightID ?? 0)"
        }
        
        if self.flightFrom != nil {
            returnData += "\n Flight Starting Point : \(self.flightFrom ?? "Unknown")"
        }
        if self.flightTo != nil {
            returnData += "\n Flight Destination : \(self.flightTo ?? "Unknown")"
        }
        
        if self.flightAirplaneID != nil {
            returnData += "\n Plane ID Info : \(self.flightAirplaneID ?? 0)"
        }
        if self.flightPilotId != nil {
            returnData += "\n  Pilot ID Info : \(self.flightPilotId ?? 0)"
        }
        
        if self.airLineID != nil {
            returnData += "\n Airline ID Info : \(self.airLineID ?? 0)"
        }
        if self.type != nil {
            
            returnData += "\n type : \(self.type ?? PlaneTypeCategory.Charter)"
        }
        return returnData
    }
    
    
    var flightID : Int?
    var flightFrom : String?
    var flightTo : String?
    var flightDate = Date()
    var flightAirplaneID : Int?
    var flightPilotId : Int?
    var airLineID : Int?
    var type : PlaneTypeCategory?
    
    
    init(){
        
        self.flightID = 0
        self.flightFrom  = ""
        self.flightTo = ""
        self.flightDate = Date()
        self.flightAirplaneID = 0
        self.flightPilotId  = 0
        self.airLineID = 0
        self.type = PlaneTypeCategory.Charter
        
    }
    
    
    
    //parameterized initializer
    init(flightID : Int, flightFrom : String, flightTo: String,flightAirplaneID : Int,flightPilotId : Int, airLineID : Int, type : PlaneTypeCategory){
        self.flightID = flightID
        self.flightFrom  = flightFrom
        self.flightTo = flightTo
        self.flightAirplaneID = flightAirplaneID
        self.airLineID = airLineID
        self.type = type
    }
    
    
    //stored property
    var FlightID : Int?{
        get { return self.flightID}
        set { self.flightID = newValue}
    }
    var FlightFrom : String?{
        get{return self.flightFrom}
        set{self.flightFrom = newValue}}
    var FlightTo : String?{
        get{return self.flightTo}
        set{self.flightTo = newValue}}
    
    var FlightAirplaneID : Int?{
        get{return self.flightAirplaneID}
        set{self.flightAirplaneID = newValue}
    }
    var FlightPilotId  : Int?{
        get{return self.flightPilotId }
        set{self.flightPilotId  = newValue}
    }
    var AirLineID : Int?{
        get{return self.airLineID}
        set{self.airLineID  = newValue}
    }
    var Types : PlaneTypeCategory? {
        get{ return self.type }
        set{ self.type = newValue }
    }
    
    
    
    func bookTicket(){
        
        print("Enter Flight ID : ")
        self.flightID = (Int)(readLine()!)
        print("Enter Starting Point of flight : ")
        self.flightFrom = readLine()!
        print("Enter Destination of flight: ")
        flightTo = readLine()!
        
        print("Enter Flight pilot ID : ")
        self.flightPilotId = (Int)(readLine()!)
        print("Enter Airline ID : ")
        self.airLineID = (Int)(readLine()!)
        print("Enter AirplaneID Info : ")
        self.flightAirplaneID = (Int)(readLine()!)
        
        print(" Choose from the following Plane Types")
        for category in PlaneTypeCategory.allCases{
            print("Enter \(category.rawValue) for \(category)")
        }
        let choice = (Int)(readLine()!) ?? 1
        self.type = PlaneTypeCategory(rawValue: choice)
        
        
        
    }
    
}
