//
//  Page.swift
//  Mistery Tales
//
//  Created by Team A on 15/07/21.
//

import Foundation

struct Page: Identifiable {
    
    let id: UUID
    let image: String
    let heading: String
    let subSubheading: String
    
    static var getAll: [Page] {
        [
            Page(id: UUID(), image: "positano", heading: "Welcome", subSubheading: "Welcome in CoasTrail, this app is for everybody who want to live a different adventure.\nPress ‘’Next’’ to discover all the functions of the app."),
            
            Page(id: UUID(), image: "pathson", heading: "Path", subSubheading: "Discover all the paths available on Amalfi Coast. It is also possible read fundamental informations about the paths and you can open maps for the directions to reach them."),
            
            Page(id: UUID(), image: "zainoon", heading: "Backpack", subSubheading: "In this section, you will find the list of things not to forget for your excursions."),
            
            Page(id: UUID(), image: "favoriteson", heading: "Favorites", subSubheading: "In this section you will find all the paths that you will select in ‘’Paths’’ pressing on the tiny star that you will find in every single path. So you won’t miss your favorite path.")
            
        ]
    }
}
