//
//  Color+Utils.swift
// SDSwiftUIPOC
//
//  Created by Felipe Borges Bezerra on 09/07/20.
//  Copyright © 2020 Felipe Borges Bezerra. All rights reserved.
//

import SwiftUI

extension Color {
    init(hex6: Int) {
        self.init(
            red: Double((hex6 >> 16) & 0xff) / 255,
            green: Double((hex6 >> 8) & 0xff) / 255,
            blue: Double(hex6 & 0xff) / 255
        )
    }
}
