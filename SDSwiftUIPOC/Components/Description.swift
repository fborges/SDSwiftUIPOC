//
//  Text+Configurable.swift
// SDSwiftUIPOC
//
//  Created by Felipe Borges Bezerra on 09/07/20.
//  Copyright © 2020 Felipe Borges Bezerra. All rights reserved.
//

import SwiftUI

struct Description: View, Configurable {

    var properties: TextProperties
    
    var body: some View {
        HStack {
            Text(properties.label)
                .font(.system(size: 16))
            Spacer()
        }
        .padding([.leading, .trailing], 15)
    }
}

struct Description_Previews: PreviewProvider {
    static var previews: some View {
        Description(properties: TextProperties(label: "bbbb", textColor: ""))
    }
}
