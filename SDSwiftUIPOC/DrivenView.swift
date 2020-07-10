//
//  DrivenView.swift
// SDSwiftUIPOC
//
//  Created by Felipe Borges Bezerra on 08/07/20.
//  Copyright © 2020 Felipe Borges Bezerra. All rights reserved.
//

import SwiftUI
import Combine

struct DrivenView: View {
    @ObservedObject private var renderer = Renderer.shared
    
    var body: some View {
        VStack {
            ForEach(renderer.components) { (element) in
                self.renderer.render(component: element)
            }
            Spacer()
        }
    }
}

struct DrivenView_Previews: PreviewProvider {
    static var previews: some View {
        DrivenView()
    }
}
