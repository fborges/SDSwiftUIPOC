//
//  AsyncImage.swift
// SDSwiftUIPOC
//
//  Created by Felipe Borges Bezerra on 10/07/20.
//  Copyright © 2020 Felipe Borges Bezerra. All rights reserved.
//

import SwiftUI

struct AsyncImage: View, Configurable {
    @ObservedObject private var loader: ImageLoader
    
    var properties: ImageProperties
    
    init(properties: ImageProperties) {
        self.properties = properties
        loader = ImageLoader(url: URL(string: properties.url)!)
    }
    
    var body: some View {
        VStack {
            image
                .onAppear(perform: loader.load)
                .onDisappear(perform: loader.cancel)
                .aspectRatio(contentMode: .fit)
            HStack {
                Text(properties.footNote)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.gray)
                    .padding(.leading, 10)
                Spacer()
            }
        }

    }
    
    private var image: some View {
        Group {
            if loader.image != nil {
                Image(uiImage: loader.image!)
                .resizable()
                
            } else {
                Text("aaaaa")
            }
        }
    }
}

struct AsyncImage_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImage(properties: ImageProperties(url: "https://i.ytimg.com/vi/V2F6RswMYpw/maxresdefault.jpg", footNote: "aaaaa"))
    }
}
