//
//  ContentView.swift
//  json-music
//
//  Created by Kyle Sherrington on 2021-01-31.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var musicModel = MusicModel()
    
    var body: some View {
        
        List(musicModel.music) { m in
            
            VStack (alignment: .leading) {
                
                Text(m.genre)
                    .font(.headline)
                HStack {
                    Text(m.instruments[0])
                    Text(m.instruments[1])
                    Text(m.instruments[2])
                    Text(m.instruments[3])
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
