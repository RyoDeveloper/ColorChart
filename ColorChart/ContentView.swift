//
//  ContentView.swift
//  ColorChart
//
//  https://github.com/RyoDeveloper/ColorChart
//  Copyright © 2023 RyoDeveloper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let colorLibrary = ColorLibrary()

    var body: some View {
        List(colorLibrary.colors) { library in
            Section(library.name) {
                ForEach(library.colorAssets) { assets in
                    Label {
                        Text(assets.name)
                    } icon: {
                        Image(systemName: "app.fill")
                            .font(.title2)
                            .foregroundColor(assets.color)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
