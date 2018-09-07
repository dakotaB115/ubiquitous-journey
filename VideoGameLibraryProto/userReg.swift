//
//  userReg.swift
//  
//
//  Created by Dakota Brown on 9/7/18.
//

import Foundation

func regUser() {
    while loggedIn == true {
        print("Use command help to see all commands")
        let inputCommand = String(readLine()!)
        
        if inputCommand == "help" || inputCommand == "Help" {
            help()
        }
        
        if inputCommand == "logout" || inputCommand == "Logout" {
            logout()
        }
        
        if inputCommand == "gameList" {
            gameList()
        }
        
        if inputCommand == "displayMore" {
            displayMore()
        }
        
        if inputCommand == "search" {
            search()
        }
        
        if inputCommand == "quit" || inputCommand == "Quit" {
            loggedIn = false
        }
        
        if inputCommand == "donateGame" {
            loggedIn = false
        }
        
        if inputCommand == "checkoutGame" {
            loggedIn = false
        }
        
        if inputCommand == "returnGame" {
            loggedIn = false
        }
        
        if inputCommand == "checkedOutGames" {
            loggedIn = false
        }
        
        if inputCommand == "renewCheckout" {
            loggedIn = false
        }
    }
}
