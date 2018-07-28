//
//  Employee.swift
//  Airline
//
//  Created by MacStudent on 2018-07-28.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Employee{
    
    var empID : Int?
    var empName : String?
    var empEmail : String?
    var mobile : String?
    var address : String?
    var designation : String?
    var sin : String?
    
    var EmpID : Int?{
        get{ return self.empID}
        set{ self.empID = newValue}
    }
    var EmpName : String?{
        get{ return self.empName}
        set{self.empName = newValue}
    }
    var EmpEmail : String?{
        get{return self.EmpEmail}
        set{self.empEmail = newValue}
    }
    var Mobile : String?{
        get{return self.Mobile}
        set{self.mobile = newValue}
    }
    var Address : String?{
        get{return self.address}
        set{self.address = newValue}
    }
    var Designation : String?{
        get{return self.designation}
        set{self.designation = newValue}
    }
    var Sin : String?{
        get{return self.sin}
        set{self.sin = newValue}
    }
    init(){
        self.empID = 0
        self.empName = ""
        self.empEmail = ""
        self.mobile = ""
        self.address = ""
        self.designation = ""
        self.sin = ""
    }
    init(empID : Int, empName: String, empEmail: String, mobile: String, address: String, designation : String, sin: String){
        self.empID = empID
        self.empName = empName
        self.empEmail = empEmail
        self.address = address
        self.designation = designation
        self.sin = sin
    }
    func displayData() {
        print(self.empID ?? 0)
        print(self.empName ?? "unknown")
        print(self.empEmail ?? "unknown")
        print(self.Mobile ?? "unknown")
        print(self.Address ?? "unknown")
        print(self.Designation ?? "unknown")
        print(self.Sin ?? "unknown")
        
        
    }
    deinit {
        print("after resigning employee must handover all the documents assigned to the employee.")
    }
}

