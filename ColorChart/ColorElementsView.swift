//
//  ColorElementsView.swift
//  ColorChart
//
//  https://github.com/RyoDeveloper/ColorChart
//  Copyright © 2023 RyoDeveloper. All rights reserved.
//

import SwiftUI

struct ColorElementsView: View {
    @State var isCopy = false
    let color: Color
    let colorElements: (red: CGFloat?, green: CGFloat?, blue: CGFloat?, white: CGFloat?, opacity: CGFloat)
    init(color: Color) {
        self.color = color
        self.colorElements = getColorElements(UIColor(color))
    }

    var body: some View {
        VStack(alignment: .trailing) {
            Button {
                // Copy
                var pasteboard = ""
                if let red = colorElements.red, let green = colorElements.green, let blue = colorElements.blue {
                    pasteboard = "red: \(round(red * 100) / 100), green: \(round(green * 100) / 100), blue: \(round(blue * 100) / 100), opacity: \(round(colorElements.opacity * 100) / 100)"
                } else if let white = colorElements.white {
                    pasteboard = "white: \(round(white * 100) / 100), opacity: \(round(colorElements.opacity * 100) / 100)"
                }
                UIPasteboard.general.string = pasteboard
                UINotificationFeedbackGenerator().notificationOccurred(.success)
                isCopy = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isCopy = false
                }

            } label: {
                ZStack {
                    Image(systemName: "doc.on.doc")
                        .foregroundColor(Color.clear)

                    Image(systemName: isCopy ? "checkmark" : "doc.on.doc")
                }
            }
            .buttonStyle(.borderedProminent)

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
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ColorElementsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorElementsView(color: Color.orange)
    }
}
