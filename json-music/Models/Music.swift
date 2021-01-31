//
//  Music.swift
//  json-music
//
//  Created by Kyle Sherrington on 2021-01-31.
//

import Foundation

class Music: Identifiable, Decodable {
    
    var id:UUID?
    var genre:String
    var instruments:[String]
    
}
