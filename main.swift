//
//  main.swift
//  Airline
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


var select = 1
let dataHelper = DataHelper()
var book = Booking()
var passenger = Passenger()



while select != 6{
    print("\n----What would you like to do today !----")
    print("\t 1 : Flight List ")
    print("\t 2 : Add booking ")
    print("\t 3 : Show booking")
    print("\t 4 : Update Passenger Details ")
    print("\t 5 : Cancel")
    print("\t 6 : Exit ")
    print("-----------------------------------------")
    print("Enter you selection please : ")
    select = (Int)(readLine()!)!
    
    switch select{
    case 1:
        dataHelper.displayFlight()
        //dataHelper.searchflight()?.displayFlight()
    case 2:
        book.addBooking()
        print(book.addBooking())
    case 3:
        print(book.displayData())
   
    case 4:
        passenger.registerUser()
        print(passenger.displayData())
    case 5:
       book.cancelBooking()
    case 6:
        exit(0)
    default:
        print("Please enter valid menu option.")
    }
}
