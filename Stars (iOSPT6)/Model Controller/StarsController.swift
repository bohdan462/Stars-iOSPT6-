//
//  StarsController.swift
//  Stars (iOSPT6)
//
//  Created by Bohdan Tkachenko on 4/23/20.
//  Copyright © 2020 Bohdan Tkachenko. All rights reserved.
//

import Foundation

class StarsController {
    init() {
        self.loadFromPersistentStore()
    }
    // Data set - 1 source of truth
    private(set) var stars: [Star] = [] //privat set means that we can acces it only inside this class
    
    
    //CRUD FUNCTIONS GOES TO MODEL Controller
    //Create
    @discardableResult func createStar(with name: String, distance: Double) -> Star { //to return this func is discardable
        let star = Star(name: name, distance: distance)
        stars.append(star)
        return star
    }
    //Read
    
    //Update
    
    //Delete
    // MARK: Persistance
    //Persistance Functions
    private var persistentFileURL: URL? {
        
        //we want to access the documents directory in the users doamin
        let fm = FileManager.default
        guard let directory = fm.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
        //create a new plist file in that directory
        return directory.appendingPathComponent("stars.plist") //basicly it creates that plist file
    }
    //Save //call save as soon as star created
    private func saveForPersistentStore() {
        guard let url = persistentFileURL else { return }
        
        //turn object into data
        //write data to file
        
        //Stars Array -> Data -> Write to plist file
        do {
            let encoder = PropertyListEncoder()
            let data = try encoder.encode(stars) //try is almost like guard. Try to do this if not do something else
            try data.write(to: url)
        } catch {
            NSLog(" Error saving stars data: \(error)")
        }
        
        
    }
    
    //Load
    
    private func loadFromPersistentStore() {
        let fm = FileManager.default
        guard let url = persistentFileURL,
            fm.fileExists(atPath: url.path) else { return }
        
        //Plist file -> Data -> Stars
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = PropertyListDecoder()
            stars = try decoder.decode([Star].self, from: data)
        } catch {
            NSLog("Error loading stars data: \(error)")
        }
    }
}
