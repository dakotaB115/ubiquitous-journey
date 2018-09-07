//
//  newUser.swift
//  
//
//  Created by Dakota Brown on 9/7/18.
//

import Foundation

func newUser() {
    
    print("Do you want to create a new account?")
    print("Y/N")
    var yN = readLine()!.uppercased()
    
    while yN != "Y" && yN != "N" {
        print("Do you want to create a new account?")
        print("Y/N")
        yN = readLine()!.uppercased()
    }
    
    if yN == "Y" {
        newAccount()
    } else if yN == "N" {
        start()
    }
}
