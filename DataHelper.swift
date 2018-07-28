//
//  DataHelper.swift
//  Airline
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class DataHelper{
    var FlightList = [Int : Flight]()
    
    init(){
        self.loadFlights()
    }
       
    
    func displayFlight(){
        //print(" Flight Details")
       // Util.drawLine()
        //print("\t flightID \t flightFrom \t flightTo \t flightAirplaneID \t flightPilotID \t AirlineID \t Category")
        
        for (_, flight) in FlightList.sorted(by: {$0.key < $1.key}){
            Util.drawLine()
            print("\(flight.displayData())")
        }
        Util.drawLine()
    }
    
        func searchflight(flightID : Int) -> Flight?{
            if FlightList[flightID] != nil{
                return FlightList[flightID]! as Flight
            }
            else{
                print("Sorry...the flight for destination you entered is not available ")
                return nil
            }
        }
        
    
    
    func loadFlights(){
       let AirCanada =   Flight(flightID : 5555, flightFrom : "Canada", flightTo: "India", flightAirplaneID : 1234 ,flightPilotId : 2222, airLineID : 01,type: PlaneTypeCategory.Boeing)
        FlightList[AirCanada.flightID!] = AirCanada
        
        let AirChina = Flight(flightID : 1111, flightFrom : "China", flightTo: "Dubai", flightAirplaneID : 1118 ,flightPilotId : 3456, airLineID : 02,type: PlaneTypeCategory.Charter)
        FlightList[AirChina.flightID!] = AirChina
        
        
        let JetAirways =  Flight(flightID : 5678, flightFrom : "India", flightTo: "Canada", flightAirplaneID : 6781 , flightPilotId : 1331, airLineID : 03, type: PlaneTypeCategory.Boeing)
        FlightList[JetAirways.flightID!] = JetAirways
        
        
        let AirInuit =  Flight(flightID : 4444, flightFrom : "Canada", flightTo: "America", flightAirplaneID : 2678 , flightPilotId : 1111, airLineID : 04,type  : PlaneTypeCategory.Charter)
        FlightList[AirInuit.flightID!] = AirInuit
        
        let AirFrane =  Flight(flightID: 9876, flightFrom: "America", flightTo: "Canada",  flightAirplaneID: 4562, flightPilotId: 2345, airLineID: 05, type: PlaneTypeCategory.Bombart)
       FlightList[AirFrane.flightID!] = AirFrane
        
        let AirGeorgian = Flight(flightID : 4567, flightFrom : "Canada", flightTo: "New Zealand", flightAirplaneID : 7654 ,flightPilotId : 1290, airLineID : 06,type: PlaneTypeCategory.Bombart)
       FlightList[AirGeorgian.flightID!] = AirGeorgian
        
        
        let AirCreebec =  Flight(flightID : 8652, flightFrom : "Canada", flightTo: "Germany",flightAirplaneID : 9065 ,flightPilotId : 2789, airLineID : 07, type : PlaneTypeCategory.Bombart)
       FlightList[AirCreebec.flightID!] = AirCreebec
        }
    
    
    
    
        
     
        func  selectedflight() -> Flight {
            let flights = (Int)(readLine()!)
           return (FlightList[flights!] ?? nil)!
        }
    }



