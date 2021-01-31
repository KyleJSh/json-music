//
//  MusicModel.swift
//  json-music
//
//  Created by Kyle Sherrington on 2021-01-31.
//

import Foundation

class MusicModel: ObservableObject {
    
    @Published var music = [Music]()
    
    init() {
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if pathString != nil {
            
            let url = URL(fileURLWithPath: pathString!)
            
            do {
                
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do {
                    
                    let jsonMusic = try decoder.decode([Music].self, from: data)
                    
                    for index in 0..<jsonMusic.count {
                        jsonMusic[index].id = UUID()
                    }
                    
                    self.music = jsonMusic
                    
                }
                catch {
                    print("Couldn't parse Music")
                }
                
            }
            catch {
                print("Couldn't create data object")
            }
        }
    }
}
