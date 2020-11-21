//
//  ContentView.swift
//  Shared
//
//  Created by Egor Merkushev on 22.11.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("bg", bundle: nil)
                .resizable()
                .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
