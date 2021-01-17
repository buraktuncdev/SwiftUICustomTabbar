//
//  TabBarIcon.swift
//  SwiftUICustomTabbar
//
//  Created by Burak Tunc on 17.01.21.
//

import SwiftUI

struct TabBarIcon: View {
    
    @StateObject var viewRouter: ViewRouter
    let assignedPage: Page
    
    let localWidth, localHeight: CGFloat
    let localSystemIconName, localTabName: String
    
    var body: some View {
        VStack {
            Image(systemName: localSystemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: localWidth, height: localHeight)
                .padding(.top, 10)
            Text(localTabName)
                .font(.footnote)
            Spacer()
        }
        .padding(.horizontal, -4)
        .onTapGesture {
            viewRouter.currentPage = assignedPage
        }
        .foregroundColor(viewRouter.currentPage == assignedPage ? Color("TabBarHighlight"): .gray)
    }
}
