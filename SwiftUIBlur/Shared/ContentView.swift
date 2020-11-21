//
//  ContentView.swift
//  Shared
//
//  Created by Egor Merkushev on 22.11.2020.
//

import SwiftUI

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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
