//
//  ContentView.swift
//  Prueba_1
//
//  Created by Jean Pierre Franco on 5/07/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack{
            Image("perro")
                .resizable()
                .scaledToFit()
                .frame(width: 5000, height:300)
                .rotationEffect(Angle(degrees: -45))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
