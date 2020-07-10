//
//  URLButton.swift
// SDSwiftUIPOC
//
//  Created by Felipe Borges Bezerra on 10/07/20.
//  Copyright © 2020 Felipe Borges Bezerra. All rights reserved.
//

import SwiftUI

struct URLButton: View, Configurable {
    var properties: URLButtonProperties
    
    init(properties: URLButtonProperties) {
        self.properties = properties
    }
    
    var body: some View {
        Group {
        Button(action: {
            UIApplication.shared.open(URL(string: self.properties.url)!)
        }) {
            Text(self.properties.text)
                .foregroundColor(.white)
                .font(Font.headline)
            }
            .padding(10)
            .background(Color.blue)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 10)
            )
        }
        .padding(.top, 30)
    
    
        
    
    }
}

struct URLButton_Previews: PreviewProvider {
    static var previews: some View {
        URLButton(properties: URLButtonProperties(url: "", text: "Go to homepage", color: ""))
    }
}
