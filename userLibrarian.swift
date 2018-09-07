//
//  userLibrarian.swift
//  
//
//  Created by Dakota Brown on 9/7/18.
//

import Foundation

func librarian() {
    while loggedIn == true {
        print("Use command help to see all commands")
        let inputCommand = String(readLine()!)
        
        if inputCommand == "help" || inputCommand == "Help" {
            help()
        }
        
        if inputCommand == "logout" || inputCommand == "Logout" {
            logout()
        }
        
        if inputCommand == "quit" || inputCommand == "Quit" {
            loggedIn = false
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
        
        if inputCommand == "addGame" {
            addGame()
        }
        
        if inputCommand == "orderGame" {
            orderGame()
        }
        
        if inputCommand == "returnedGames" {
            returnedGames()
        }

        if inputCommand == "checkInGame" {
            checkInGame()
        }
        
        if inputCommand == "checkInAllGames" {
            checkInAllGames()
        }
        
        if inputCommand == "checkDonatedGames" {
            checkDonatedGames()
        }
        
        if inputCommand == "removeGame" {
            removeGame()
        }
        
        if inputCommand == "checkedOutGames" {
            checkedOutGames()
        }
        
    }
}
