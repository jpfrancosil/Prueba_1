//
//  CarruselView.swift
//  Prueba_1
//
//  Created by Jean Pierre Franco on 5/07/23.
//

import SwiftUI
import URLImage

struct CarruselView: View {
    var imageUrls: [URL]
        
        var body: some View {
            VStack {
                TabView {
                    ForEach(imageUrls, id: \.self) { imageUrl in
                        URLImage(url: imageUrl) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
                Text("Desliza para ver más")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
}

struct CarruselView_Previews: PreviewProvider {
    static var previews: some View {
        CarruselView(imageUrls : [
            URL(string: "https://es.wikipedia.org/wiki/Club_Universitario_de_Deportes#/media/Archivo:Logo_oficial_de_Universitario.png")!,
            URL(string: "https://es.wikipedia.org/wiki/Club_Universitario_de_Deportes#/media/Archivo:Logo_oficial_de_Universitario.png")!,
            URL(string: "https://es.wikipedia.org/wiki/Club_Universitario_de_Deportes#/media/Archivo:Logo_oficial_de_Universitario.png")!,
            URL(string: "https://es.wikipedia.org/wiki/Club_Universitario_de_Deportes#/media/Archivo:Logo_oficial_de_Universitario.png")!
        ])
    }
}
