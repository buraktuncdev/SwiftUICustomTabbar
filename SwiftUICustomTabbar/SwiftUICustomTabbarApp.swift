//
//  SwiftUICustomTabbarApp.swift
//  SwiftUICustomTabbar
//
//  Created by Burak Tunc on 17.01.21.
//

import SwiftUI

@main
struct SwiftUICustomTabbarApp: App {
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewRouter: viewRouter)
        }
    }
}
