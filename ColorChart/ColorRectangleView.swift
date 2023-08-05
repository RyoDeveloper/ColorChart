//
//  ColorRectangleView.swift
//  ColorChart
//
//  https://github.com/RyoDeveloper/ColorChart
//  Copyright © 2023 RyoDeveloper. All rights reserved.
//

import SwiftUI

struct ColorRectangleView: View {
    let color: Color

    var body: some View {
        Image(systemName: "app.fill")
            .resizable()
            .scaledToFit()
            .foregroundColor(color)
    }
}

struct ColorRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorRectangleView(color: Color.orange)
    }
}
