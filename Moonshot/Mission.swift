//
//  Mission.swift
//  Moonshot
//
//  Created by Joshua Rosado Olivencia on 12/5/24.
//

import Foundation


struct Mission: Codable, Identifiable {
    

    struct CrewRole: Codable {
        let name: String
        let role: String
        
    }
    let id : Int

    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    

    var displayName: String {
        "Apollo \(id)"
        
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
    
    var formattedLaunchDateLong: String {
        launchDate?.formatted(date: .long , time:.standard) ?? "N/A"
    }
}
