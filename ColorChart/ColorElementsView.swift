//
//  ColorElementsView.swift
//  ColorChart
//
//  https://github.com/RyoDeveloper/ColorChart
//  Copyright © 2023 RyoDeveloper. All rights reserved.
//

import SwiftUI

struct ColorElementsView: View {
    let color: Color
    let colorElements: (red: CGFloat?, green: CGFloat?, blue: CGFloat?, white: CGFloat?, opacity: CGFloat)
    init(color: Color) {
        self.color = color
        self.colorElements = getColorElements(UIColor(color))
    }

    var body: some View {
        VStack(alignment: .leading) {
            if let red = colorElements.red, let green = colorElements.green, let blue = colorElements.blue {
                Text("red:    \(red)")
                Text("green:  \(green)")
                Text("blue:   \(blue)")
                Text("opacity:\(colorElements.opacity)")
            } else if let white = colorElements.white {
                Text("white:  \(white)")
                Text("opacity:\(colorElements.opacity)")
            }
        }
        .font(Font.system(.title, design: .monospaced))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ColorElementsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorElementsView(color: Color.orange)
    }
}
