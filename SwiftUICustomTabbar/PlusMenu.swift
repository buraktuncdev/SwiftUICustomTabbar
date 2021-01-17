//
//  PlusMenu.swift
//  SwiftUICustomTabbar
//
//  Created by Burak Tunc on 17.01.21.
//

import SwiftUI

struct PlusMenu: View {
    let widthAndHeight: CGFloat
    
    var body: some View {
        HStack(spacing: 50){
            ZStack {
                Circle()
                    .foregroundColor(Color("Orange"))
                    .frame(width: widthAndHeight, height: widthAndHeight)
                Image(systemName: "record.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(15)
                    .frame(width: widthAndHeight, height: widthAndHeight)
                    .foregroundColor(.white)
            }
            ZStack {
                Circle()
                    .foregroundColor(Color("Orange"))
                    .frame(width: widthAndHeight, height: widthAndHeight)
                Image(systemName: "folder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(15)
                    .frame(width: widthAndHeight, height: widthAndHeight)
                    .foregroundColor(.white)
            }
        }
        .transition(.scale)
    }
    
}


