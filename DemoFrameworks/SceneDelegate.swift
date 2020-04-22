//
//  SceneDelegate.swift
//  DemoFrameworks
//
//  Created by Alan Steiman on 22/04/2020.
//  Copyright © 2020 Alan Steiman. All rights reserved.
//

import UIKit
import SwiftUI
#if STOREA
import StoreA
#endif
#if STOREB
import StoreB
#endif

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        var colorKit: ColorKit!
        #if STOREA
            colorKit = ColorKit(palette: StoreAColorPalette())
        #endif
        #if STOREB
            colorKit = ColorKit(palette: StoreBColorPalette())
        #endif

        let contentView = ContentView()
            .environmentObject(colorKit)

        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
