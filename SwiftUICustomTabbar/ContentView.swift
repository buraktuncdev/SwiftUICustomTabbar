//
//  ContentView.swift
//  SwiftUICustomTabbar
//
//  Created by Burak Tunc on 17.01.21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewRouter: ViewRouter
    @State var showPopUp = false
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack {
                Spacer()
                
                switch viewRouter.currentPage {
                    case .home:
                        Text("Home")
                    case .liked:
                        Text("Liked")
                    case .records:
                        Text("Records")
                    case .user:
                        Text("User")
                }
                
                Spacer()
                ZStack {
                    if showPopUp {
                        PlusMenu(widthAndHeight: geometry.size.width/7)
                            .offset(y: -geometry.size.height/6)
                    }
                    HStack {
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .home, localWidth: geometry.size.width/5, localHeight: geometry.size.height/28, localSystemIconName: "homekit", localTabName: "Home")
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .liked, localWidth: geometry.size.width/5, localHeight: geometry.size.height/28, localSystemIconName: "heart", localTabName: "Liked")
                        ZStack {
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: geometry.size.width/7, height: geometry.size.height/7)
                                .shadow(radius: 4)
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: geometry.size.width/7-6, height: geometry.size.height/7-6)
                                .foregroundColor(Color("Orange"))
                                .rotationEffect(Angle(degrees: showPopUp ? 90 : 0))
                        }
                        .offset(y: -geometry.size.height/8/2)
                        .onTapGesture {
                            withAnimation{
                                showPopUp.toggle()
                            }
                        }
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .records, localWidth: geometry.size.width/5, localHeight: geometry.size.height/28, localSystemIconName: "waveform", localTabName: "Records")
                        TabBarIcon(viewRouter: viewRouter, assignedPage: .user, localWidth: geometry.size.width/5, localHeight: geometry.size.height/28, localSystemIconName: "person.crop.circle", localTabName: "Account")
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height/8)
                    .background(Color("TabBarBackgorund").shadow(radius: 2))
                }
            }
            .edgesIgnoringSafeArea(.bottom)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}


