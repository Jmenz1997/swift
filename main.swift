//
//  main.swift
//  RPG
//
//  Created by MENZOU Jugurtha on 2020-07-04.
//  Copyright © 2020 MENZOU Jugurtha. All rights reserved.
//

import Foundation
func input()->Int{
    let selection=readLine()
    return Int(selection!)!
}
var joueur1=Personnage()
var joueur2=Personnage()
var caracter1:Int
var caracter2: Int
var selection1:Int
var selection2: Int
var won : Bool = false
var endGame:Int
var endingGame:Bool=false
repeat {
    print("Gamer 1:")
    print("Select your caracter: ")
    print("1-Archer")
    print("2-Warrior")
    print("3-Wizard")
    caracter1=input()
    print("")
    if caracter1==1{
        joueur1.caracter(pers:Caracter.archer)
    }
    if caracter1==2{
        joueur1.caracter(pers:Caracter.warrior)
    }
    if caracter1==3{
        joueur1.caracter(pers: Caracter.wizard)
    }
    print("Gamer 2:")
    print("Select your caracter: ")
    print("1-Archer")
    print("2-Warrior")
    print("3-Wizard")
    caracter2=input()
    print("")
    if caracter2==1{
        joueur2.caracter(pers:Caracter.archer)
    }
    if caracter2==2{
        joueur2.caracter(pers:Caracter.warrior)
    }
    if caracter2==3{
        joueur2.caracter(pers: Caracter.wizard)
    }
    //var degatt2:Int = joueur2.getDegat()
    //var degatt1:Int = joueur1.getDegat()
    while won==false{
        print("Joueur--1--")
        joueur1.description()
        print("Attacker (1) ou Ammeliorer (2) ")
        selection1=input()
        
        if selection1==1{
            joueur2.attack(dammage:joueur1.getDegat())
        }
        else if selection1==2{
            joueur1.ammeliorer()
        }
        print("Joueur--2--")
        joueur2.description()
        print("Attacker (1) ou Ammeliorer (2) ")
        selection2=input()
        if selection2==1{
            joueur1.attack(dammage:joueur2.getDegat())
        }else if selection2==2{
            joueur2.ammeliorer()
        }
        if joueur1.getlife()<=0{
            print("GAMER 2 WON !!!! YEAAH")
            won=true
        }else if joueur2.getlife()<=0{
            print("GAMER 1 WON !!!! YEAAH")
            won=true
        }
    }
    print("do you want to end the game 1-YES or 2-Non")
    endGame=input()
    if endGame==1{
        endingGame=true
        print("Developed by MENZOU JUGHURTA with X-CODE")
        print("")
        print("THANK YOU FOR PLAYING :) TO BE CONTINUED...")
    }
    if endGame==2{
        endingGame=false
        joueur2.reset()
        joueur1.reset()
        won=false
    }
}while endingGame==false

