//
//  Booking.swift
//  Airline
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
typealias flightdetail = (flightID: Int , flight: Flight)

class Booking : Flight{
    private var bookingID : Int = 0
    private var bookingDate : Date
    private var bookingStatus : bookingStatusList?
    private var bookingflight : [flightdetail] = []
    private var mealType : String
    
   
    private var dataHelper = DataHelper()
    
    var BookingID : Int{
        get { return self.bookingID }
        set{ self.bookingID = newValue}
    }
     var BookingDate : Date{
        get { return self.bookingDate }
        set{ self.bookingDate = newValue}
    }
    var BookingStatus : bookingStatusList?{
        get { return self.bookingStatus ?? bookingStatusList.nobooking }
        set{ self.bookingStatus = newValue}
}
    override init(){
        self.bookingID = 0
        self.bookingDate = DateFormatter().date(from: "")!
        self.bookingStatus = bookingStatusList.nobooking
        self.bookingflight = []
        self.mealType = ""
       
        super.init()
    }
    
    override func displayData() -> String {
        var returnData = ""
        
        returnData += "\n bookingID : \(self.BookingID)"
        returnData += "\n booking Date : \(self.BookingDate )"
               returnData += super.displayData()
        
        returnData += "\n FlightList : "
        if !self.bookingflight.isEmpty{
            for (_, flight) in self.bookingflight{
                returnData += "\n \tflight : \(flight.displayData())"
                
            }
        }else{
            returnData += "\n No booking for flight"
        }
        returnData += "\n Booking Status : \(self.BookingStatus ?? bookingStatusList.nobooking)"
        //returnData += "\n flight Cost : \(self.flightCost  ?? 0.0)"
        
        return returnData
    }
    
    func addBooking(){
        
        dataHelper.displayFlight()
        print("Please enter flight ID to select any flight from the list : ")
        let selectedflightID : Int = (Int)(readLine()!)!
        
        if let selectedflight = dataHelper.searchflight(flightID: selectedflightID){
            self.bookingID = selectedflightID
            self.BookingDate = Date()
            
            
            self.bookingflight += [(flightID: selectedflightID, flight: selectedflight)]
            self.BookingStatus = bookingStatusList.placed
            print("show entered flight: ")
            
        }else{
            print("Sorry...The flight you entered is unavailable")
        }
    }
    
    func cancelBooking(){
        if !bookingflight.isEmpty {
            print("Review your booking \n \(self.displayData())")
            
            print("Please enter flight ID to remove from the booking : ")
            let selectedFlightID : Int = (Int)(readLine()!)!
            var flightIndex = -1
            
            for (index, flight) in self.bookingflight.enumerated(){
                if (flight.flightID == selectedFlightID){
                    flightIndex = index
                }
            }
            
            if flightIndex != -1{
                self.bookingflight.remove(at: flightIndex)
                print("The flight is removed from your booking")
            }
            else{
                print("You have no flight in your booking")
            }
        }
    }
    
    
}

