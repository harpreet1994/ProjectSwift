//
//  Airline.swift
//  Airline
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Airline{
    var airlineID : Int?
    var description : String?
    var airlineType : String?
    
    var Airline : Int?{
        get{return self.airlineID}
        set{self.airlineID = newValue}
    }
    var Description : String?{
        get{return self.description}
        set{self.description = newValue}
    }
    var Airlinetype : String?{
        get{return self.airlineType}
        set{self.airlineType = newValue}
    }
    
    init(){
        self.airlineID = 0
        self.description = ""
        self.airlineType = ""
    }
    init(airlineID : Int, description: String, airlineType: String){
        self.airlineID = airlineID
        self.description = description
        self.airlineType = airlineType
        
    }
    func displayData() -> String{
        var returnData = ""
        returnData += "\n Airline ID : \(self.airlineID ?? 0)"
        returnData += "\n Description : \(self.description ?? "")"
        returnData += "\n Airline Type : \(self.airlineType ?? "")"
        return returnData
    }
    
    func newAirline(){
        print("Enter Airline ID :")
        self.airlineID  = (Int)(readLine()!)
        print("Enter Description :")
        self.description = readLine()
        print(" Enter Airline Type :")
        self.airlineType = readLine()
    }
}

