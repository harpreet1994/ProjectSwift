//
//  Enumeration.swift
//  Airline
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
enum PlaneTypeCategory : Int, CaseIterable {
    case Bombart = 1
    case Airbus = 2
    case Charter = 3
    case Boeing  = 4
}
enum bookingStatusList : Int, CaseIterable {
    case placed = 0
    case pending = 1
    case confirmed = 2
    case nobooking  = 3
}
/* enum flightdetail : Int, CaseIterable{
 case empty = 0
 case Canada = 1
 case NewZealand = 2
 case America = 3
 case Dubai = 4
 case Chaina  = 5
 case Germany = 6
 
 }*/

extension CaseIterable where Self: Hashable {
    static var allCases: [Self]{
        return [Self](AnySequence { () -> AnyIterator<Self> in
            var raw = 0
            var first: Self?
            return AnyIterator {
                let current = withUnsafeBytes(of: &raw) { $0.load(as: Self.self) }
                if raw == 0 {
                    first = current
                } else if current == first {
                    return nil
                }
                raw += 1
                return current
            }
        })
    }
}


