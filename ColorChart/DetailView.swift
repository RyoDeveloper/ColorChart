//
//  DetailView.swift
//  ColorChart
//
//  https://github.com/RyoDeveloper/ColorChart
//  Copyright © 2023 RyoDeveloper. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let selection: ColorAsset

    var body: some View {
        VStack {
            Text(selection.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .textSelection(.enabled)
                .frame(maxWidth: .infinity, alignment: .leading)

            ColorElementsView(color: selection.color)

            Image(systemName: "app.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(selection.color)
        }
        .padding(.horizontal)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(selection: ColorAsset(name: ".orange", color: Color.orange))
    }
}

// red: 0.0, green: 0.48, blue: 1.0, opacity: 1.0
