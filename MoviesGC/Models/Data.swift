//
//  Data.swift
//  MoviesGC
//
//  Created by guillermo chacon alcala on 23/08/22.
//

import Foundation

struct ModelClass: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var description: String
}
