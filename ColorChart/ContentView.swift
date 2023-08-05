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
    @State var selection: ColorAsset?

    var body: some View {
        NavigationSplitView {
            NavigationStack {
                List(colorLibrary.colors, selection: $selection) { library in
                    Section(library.name) {
                        ForEach(library.colorAssets) { assets in
                            Label {
                                Text(assets.name)
                            } icon: {
                                ColorRectangleView(color: assets.color)
                            }
                            .tag(assets)
                        }
                    }
                }
            }
            .navigationTitle("ColorChart")
        } detail: {
            if let selection {
                DetailView(selection: selection)
            } else {
                Text("選択してください。")
            }
        }
        .navigationSplitViewStyle(.balanced)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
