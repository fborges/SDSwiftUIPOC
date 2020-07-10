//
//  Title.swift
// SDSwiftUIPOC
//
//  Created by Felipe Borges Bezerra on 09/07/20.
//  Copyright © 2020 Felipe Borges Bezerra. All rights reserved.
//

import SwiftUI

struct Title: View, Configurable {
    typealias PropertyList = TextProperties
    
    @State var properties: TextProperties
    
    var body: some View {
        Text(properties.label)
            .bold()
            .font(.largeTitle)
            .padding(.all, 15)
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title(properties: TextProperties(label: "aaaaaaa", textColor: ""))
    }
}
