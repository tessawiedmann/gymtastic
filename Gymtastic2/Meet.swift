//
//  Meet.swift
//  Gymtastic2
//
//  Created by Olivia Wiedmann on 12/3/16.
//  Copyright © 2016 Tessa Wiedmann. All rights reserved.
//

import UIKit

class Meet {
    
    //MARK: Properties
    var name: String
    var date: Date
    
    var vaultScore: Double?
    var vaultPlace: Int?
    var vaultNotes: String?
    
    var beamScore: Double?
    var beamPlace: Int?
    var beamNotes: String?
    
    var barsScore: Double?
    var barsPlace: Int?
    var barsNotes: String?
    
    var floorScore: Double?
    var floorPlace: Int?
    var floorNotes: String?
    
    var allAroundScore: Double?
    var allAroundPlace: Int?
    var allAroundNotes: String?
    
    //MARK: Initialization 
    init?(name: String, date: Date) {
        /*
 vaultScore: Double?, vaultPlace: Int?, vaultNotes: String?, beamScore: Double?,beamPlace: Int?, beamNotes: String?, barsScore: Double?, barsPlace: Int?, barsNotes: String?, floorScore: Double?, floorPlace: Int?, floorNotes: String?, allAroundScore: Double?, allAroundPlace: Int?, allAroundNotes: String?
 */
        self.name = name
        self.date = date
        /*
        self.vaultScore = nil
        self.vaultPlace = nil
        self.vaultNotes = nil
        self.beamScore = beamScore
        self.beamPlace = beamPlace
        self.beamNotes = beamNotes
        self.barsScore = barsScore
        self.barsPlace = barsPlace
        self.barsNotes = barsNotes
        self.floorScore = floorScore
        self.floorPlace = floorPlace
        self.floorNotes = floorNotes
        self.allAroundScore = allAroundScore
        self.allAroundPlace = allAroundPlace
        self.allAroundNotes = allAroundNotes
        */
        
        if name.isEmpty {
            return nil
        }
    }
    
    

}
