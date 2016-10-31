//
//  SortingStuff.swift
//  ClosuresAreGreat
//
//  Created by Ron Don Volante on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


//: Playground - noun: a place where people can play

struct ToyBin {
    
    var ships: [Ship] = []
    var books: [Book] = []
    var bowlingPins: [BowlingPin] = []
    var musicCDs: [MusicCD] = []
    
    mutating func sortShips() {
        ships = ships.sorted { (a, b) -> Bool in
            
            return a.age > b.age
        }
        
        for (index, value) in ships.enumerated() {
            if value.name == "Titanic" {
                ships.remove(at: index)
                ships.insert(value, at: 0)
            }
        }
        
        
    }
    
    mutating func sortBooks() {
        books = books.sorted(by: { $0.name < $1.name })
        
        
    }
    
    mutating func sortBowlingPins() {
        bowlingPins = bowlingPins.sorted(by: { $0.color.rawValue < $1.color.rawValue })
        
    }
    
    mutating func sortMusicCDs() {
        musicCDs = musicCDs.sorted { ($0.name > $1.name)}
        
        for (index, value) in musicCDs.enumerated() {
            if value.name == "Drake" {
                musicCDs.remove(at: index)
                musicCDs.insert(value, at: 0)
            }
        }
    }
    
    
}


struct Ship {
    var name: String
    var age: Int
}


struct Book {
    var name: String
    var year: Int
    var author: String
}


struct BowlingPin {
    var name: String
    var film: String
    var color: Color
}


extension BowlingPin {
    mutating func changeColor(to color: Color) {
        self.color = color
    }
}


enum Color: Int {
    case red, organe, yellow, green, blue, indigo, violet
}

struct MusicCD {
    var name: String
    var year: Int
    var songs: [String]
}







