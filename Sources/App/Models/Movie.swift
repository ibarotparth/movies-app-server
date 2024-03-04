//
//  File.swift
//  
//
//  Created by csuftitan on 3/3/24.
//

import Foundation
import Vapor
import Fluent

final class Movie: Model, Content {
    
    static let schema = "movies"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "title")
    var title: String
    
    @Field(key: "year")
    var year: Int
    
    init() { }
        
    init(id: UUID? = nil, title: String, year: Int) {
        self.id = id
        self.title = title
        self.year = year
    }
    
}
