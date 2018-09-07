//
//  Users.swift
//  VideoGameLibraryProto
//
//  Created by Dakota Brown on 9/7/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import Foundation

var currentUser: user?

class user{
    var userName : String
    var password : String
    var isRegUser : Bool
    var isLibrarian : Bool
    
    init(userName: String, password: String, isRegUser: Bool, isLibrarian: Bool) {
        self.userName = userName
        self.password = password
        self.isRegUser = isRegUser
        self.isLibrarian = isLibrarian
    }
}

func newAccount() {
    print("New username")
    let name = String(readLine()!)
    print("New Password")
    let pass = String(readLine()!)
    
    var regUser = false
    var librarian = false
    
    print("Are you a 1: A Librarian or  2: A Regualar User")
    var oneTwo = Int(readLine()!)
    while oneTwo != 1 && oneTwo != 2 {
        print("Are you a 1: A Librarian or  2: A Regualar User")
        oneTwo = Int(readLine()!)
    }
    
    if oneTwo == 1 {
        librarian = true
    } else if oneTwo == 2 {
        regUser = true
    }
    
    currentUser = user(userName: name, password: pass, isRegUser: regUser, isLibrarian: librarian)
    print("Account created")
    start()
}

func login() {
    print("Enter your username")
    var userN = String(readLine()!)
    print("Enter your password")
    var userP = String(readLine()!)
    
    while userN != currentUser?.userName && userP != currentUser?.password {
        print("Your username or password is invalid")
        print("Enter your username")
        userN = String(readLine()!)
        print("Enter your password")
        userP = String(readLine()!)
    }
    
    if userN == currentUser?.userName && userP == currentUser?.password {
        if currentUser?.isLibrarian == true {
            if let user = currentUser?.userName {
                print("Welcome librarian \(user)")
                librarian()
            }
        }
        if currentUser?.isRegUser == true {
            if let user = currentUser?.userName {
                print("Welcome back \(user), would you like to checkout a game?")
                regUser()
            }
        }
    }
}
