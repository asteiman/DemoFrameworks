//
//  ColorKit.swift
//  StoreB
//
//  Created by Alan Steiman on 22/04/2020.
//  Copyright © 2020 Alan Steiman. All rights reserved.
//

import UIKit
import Shared
import Combine

class ColorKit: ObservableObject {
    private var palette: ColorPalette
    
    init(palette: ColorPalette) {
        self.palette = palette
    }
    
    func primaryColor() -> UIColor {
        return palette.primaryColor()
    }
}
