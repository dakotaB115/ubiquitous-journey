//
//  startUp.swift
//  VideoGameLibraryProto
//
//  Created by Dakota Brown on 9/7/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import Foundation

func start() {
    print("Welcome to the Video Game Library Prototype")
    
    print("Are you an existing user?")
    print("Y/N")
    var YN = readLine()!.uppercased()
    
    while YN != "Y" && YN != "N" {
        print("Are you an existing user?")
        print("Y/N")
        YN = readLine()!.uppercased()
    }
    
    if YN == "Y" {
        print("working Y")
        login()
    } else if YN == "N" {
        print("working N")
        newUser()
    }
}
