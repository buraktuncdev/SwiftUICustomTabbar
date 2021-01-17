//
//  ContentView.swift
//  SwiftUICustomTabbar
//
//  Created by Burak Tunc on 17.01.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { geometry in
            VStack {
                Spacer()
                Text("Home")
                Spacer()
                HStack {
                    TabBarIcon(localWidth: geometry.size.width/5, localHeight: geometry.size.height/28, localSystemIconName: "homekit", localTabName: "Home")
                    TabBarIcon(localWidth: geometry.size.width/5, localHeight: geometry.size.height/28, localSystemIconName: "heart", localTabName: "Liked")
                    ZStack {
                        Circle()
                            .foregroundColor(.white)
                            .frame(width: geometry.size.width/7, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    TabBarIcon(localWidth: geometry.size.width/5, localHeight: geometry.size.height/28, localSystemIconName: "plus", localTabName: "Add")
                    TabBarIcon(localWidth: geometry.size.width/5, localHeight: geometry.size.height/28, localSystemIconName: "waveform", localTabName: "Records")
                    TabBarIcon(localWidth: geometry.size.width/5, localHeight: geometry.size.height/28, localSystemIconName: "person.crop.circle", localTabName: "Account")
                }
                .frame(width: geometry.size.width, height: geometry.size.height/8)
                .background(Color("TabBarBackgorund").shadow(radius: 2))
            }
            .edgesIgnoringSafeArea(.bottom)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


