//
//  ContentView.swift
//  Shared
//
//  Created by Egor Merkushev on 22.11.2020.
//

import SwiftUI

struct Card: View {
    var body: some View {
        HStack {
            ZStack {
                Color.accentColor
                
                Image(systemName: "calendar")
                    .foregroundColor(.white)
                    .font(.system(size: 32))
            }
            .frame(width: 64, height: 64, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .cornerRadius(18)
            .clipped()
            
            VStack {
                Text("10:00 – 11:00")
            
                Text("Wednesday, June 2020")
            }
        }
    }
}

struct Blur: View {
    var body: some View {
        Text("Blur view")
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("bg", bundle: nil)
                .resizable()
                .ignoresSafeArea()
            
            Blur()
                .debugBorder(color: .green)
            
            Card()
                .debugBorder(color: .yellow)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
