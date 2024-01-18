//
//  ContentView.swift
//  Shared
//
//  Created by Egor Merkushev on 22.11.2020.
//

import SwiftUI

struct Card: View {
    @State private var offset = CGSize.zero
    
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
        .background(Color(UIColor.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 34, style: .continuous))
        .padding(18)
        .background(
            Blur()
                .intensity(0.75)
                .effectStyle(.systemThickMaterial)
                .overlay(Color(UIColor.systemBackground).opacity(0.5))
        )
        .clipShape(RoundedRectangle(cornerRadius: 44, style: .continuous))
        .overlay(
            RoundedRectangle(cornerRadius: 44, style: .continuous)
                .stroke(Color(UIColor.systemBackground).opacity(0.5), lineWidth: 1)
        )
        .offset(x: offset.width, y: offset.height)
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    self.offset = gesture.translation
                }
                .onEnded { _ in 
                    self.offset = .zero
                }
        )
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("bg1", bundle: nil)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Card()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
