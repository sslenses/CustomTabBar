//
//  ContentView.swift
//  CustomTabBar
//
//  Created by hai kamu on 27/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                Text("Dast ist lange her.")
                Spacer()
                HStack {
                    TabBarIcon(width: geometry.size.width/5, height: geometry.size.height/28, systemIconName: "house", tabName: "Home")
                    TabBarIcon(width: geometry.size.width/5, height: geometry.size.height/28, systemIconName: "scooter", tabName: "Scooter")
                    TabBarIcon(width: geometry.size.width/5, height: geometry.size.height/28, systemIconName: "qrcode.viewfinder", tabName: "Scan Me")
                    TabBarIcon(width: geometry.size.width/5, height: geometry.size.height/28, systemIconName: "parkingsign.circle", tabName: "EndHub")
                    TabBarIcon(width: geometry.size.width/5, height: geometry.size.height/28, systemIconName: "creditcard", tabName: "Wallet")
                }
                .frame(width: geometry.size.width, height: geometry.size.height/8)
                .background(Color("TabBarBackground"))
                .shadow(radius: 2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TabBarIcon: View {
    
    let width, height: CGFloat
    let systemIconName, tabName: String
    
    var body: some View {
        VStack {
            Image(systemName: systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 10)
            Text (tabName)
                .font(.footnote)
            Spacer ()
        }
    }
}
