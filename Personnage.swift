//
//  Personnage.swift
//  RPG
//
//  Created by MENZOU Jugurtha on 2020-07-04.
//  Copyright © 2020 MENZOU Jugurtha. All rights reserved.
//

class Personnage{
    var nom: String="Archer"
    var vie: Int = 100
    var degat: Int=10
    var arme: String="Arc"
    
    func caracter(pers: Caracter){
        if pers == Caracter.archer{
            self.nom = "Archer"
            self.vie = 100
            self.degat = 10
            self.arme = "arc"
        }
        if pers==Caracter.warrior{
            self.nom="Warrior"
            self.vie=100
            self.degat=12
            self.arme="epee"
        }
        if pers==Caracter.wizard{
            self.nom="Wizard"
            self.vie=100
            self.degat=15
            self.arme="magie"
        }
        
        
        
    }
    
    func ammeliorer(){
        
        self.degat+=5
    }
    func attack(dammage:Int){
        self.vie-=dammage
    }
    func getlife()->Int{
        return self.vie
        
    }
    func getCaracterName()->String{
        return self.nom
    }
    func getDegat()->Int{
        return self.degat
    }
    func getArme()->String{
        return self.arme
    }
    func description(){
        print("soldat: ",getCaracterName(),"\nVie: ",getlife(),"/n arme: ",getArme(),"\n","Degat: ",getDegat() )
        
    }
    func reset(){
        self.vie=100
        self.degat=10
    }
    
    
    
    
    
    
}
