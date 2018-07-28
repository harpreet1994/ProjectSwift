//
//  Enquiry.swift
//  Airline
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Enquiry : Airline {
    
    private var enquiryID : Int?
    private var enquiryType : String?
    private var enquiryTitle : String?
    private var enquiryDescription : String?
    // private var enquiryDate; == Date();?
    
    override func displayData() -> String {
        var returnData = ""
        returnData += "\n Enquiry ID : \(self.enquiryID  ?? 0)"
        returnData += "\n Title of Enquiry : \(self.enquiryTitle ?? "")"
        returnData += "\n Description : \(self.enquiryDescription ?? "")"
        
        //  returnData += "\n Date : \(self.enquiryTitle ?? Date)"
        
        return returnData
    }
    
    override init(){
        super.init()
        self.enquiryID  = 0
        self.enquiryTitle = ""
        self.enquiryDescription = ""
        
        // self.enquiryDate = Date
    }
    init(airlineID : Int, description : String,  airlineType : String , enquiryID : Int ,enquiryTitle: String, enquiryDescription: String, enquiryDate: Date) {
        self.enquiryID  = enquiryID
        self.enquiryTitle = enquiryTitle
        self.enquiryDescription = enquiryDescription
        //self.enquiryType = enquiryDate
        super.init(airlineID : airlineID , description : description,  airlineType : airlineType)
    }
}
