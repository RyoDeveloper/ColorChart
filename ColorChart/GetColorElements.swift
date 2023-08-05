//
//  GetColorElements.swift
//  ColorChart
//
//  https://github.com/RyoDeveloper/ColorChart
//  Copyright © 2023 RyoDeveloper. All rights reserved.
//

import Foundation
import UIKit

func getColorElements(_ color: UIColor) -> (red: CGFloat?, green: CGFloat?, blue: CGFloat?, white: CGFloat?, opacity: CGFloat) {
    let components = color.cgColor.components!

    if components.count == 4 {
        return (red: components[0], green: components[1], blue: components[2], white: nil, opacity: components[3])
    } else {
        return (red: nil, green: nil, blue: nil, white: components[0], opacity: components[1])
    }
}
