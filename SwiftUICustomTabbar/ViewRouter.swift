//
//  ViewRouter.swift
//  SwiftUICustomTabbar
//
//  Created by Burak Tunc on 17.01.21.
//

import Foundation
import SwiftUI

class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .home
    
}

enum Page {
    case home
    case liked
    case records
    case user
}
