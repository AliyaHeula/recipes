//
//  Recipes.swift
//  recipes
//
//  Created by Aliya on 19.03.2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Recipes: Hashable, Codable, Identifiable {
    var id: Int
    
    var title: String
    var description: String
    var steps: [String]
    var urlToImage: String
}
