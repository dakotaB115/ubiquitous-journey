//
//  commands.swift
//  
//
//  Created by Dakota Brown on 9/7/18.
//

import Foundation
var commands = "help, logout, gameList, displayMore, search, quit,"
var librarianCommands = "addGame, orderGame, returnedGames, checkInGame, checkInAllGames, checkDonatedGames, removeGame, checkedOutGames."
var userCommands = "donateGame, checkoutGame, returnGame, checkedOutGames, renewCheckout."

//commands both can use
func help() {
    if currentUser?.isLibrarian == true {
        print("The commands avalible to you are: \(commands) \(librarianCommands)")
    }
    if currentUser?.isRegUser == true {
        print("The commands avalible to you are: \(commands) \(userCommands)")
    }
}

func logout() {
    loggedIn = false
    start()
}

func gameList() {
    print("game list")
}

func displayMore() {
    print("display more")
}

func search() {
    print("search")
}

//commands only the regular user can use

func donateGame() {
    print("donate game")
}

func checkoutGame() {
    print("checkout game")
}

func returnGame() {
    print("return game")
}

func userCheckedOutGames() {
    print("user checked out games")
}

func renewCheckout() {
    print("renew checkout")
}

//commands only the librarian can use

func addGame() {
    print("add game")
}

func orderGame() {
    print("order game")
}

func returnedGames() {
    print("returned games")
}

func checkInGame() {
    print("check in game")
}

func checkInAllGames() {
    print("check in all games")
}
func checkDonatedGames() {
    print("check donated games")
}

func removeGame() {
    print("remove games")
}

func checkedOutGames() {
    print("checked out games")
}
