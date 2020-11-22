//
//  ContentView.swift
//  Shared
//
//  Created by Egor Merkushev on 22.11.2020.
//

import SwiftUI

struct Card: View {
    var body: some View {
        HStack(alignment: VerticalAlignment.center, spacing: 18) {
            ZStack {
                Color.accentColor
                
                Image(systemName: "calendar")
                    .foregroundColor(.white)
                    .font(.system(size: 32))
            }
            .frame(width: 64, height: 64, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(RoundedRectangle(cornerRadius: 18, style: .continuous))
            
            VStack(alignment: .leading, spacing: 8) {
                Text("10:00 – 11:00")
                    .font(.headline)
                
                Text("Wednesday, June 2020")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        .padding(17)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 34, style: .continuous))
        .padding(18)
        .background(Color.white.opacity(0.5))
        .clipShape(RoundedRectangle(cornerRadius: 44, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 44, style: .continuous)
                .stroke(Color.white, lineWidth: 1)
        )
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
