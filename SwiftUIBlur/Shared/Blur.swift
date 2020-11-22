//
//  Blur.swift
//  SwiftUIBlur
//
//  Created by Egor Merkushev on 22.11.2020.
//

import SwiftUI
import UIKit

struct Blur: UIViewRepresentable {
    var style: UIBlurEffect.Style = .light
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        UIVisualEffectView(effect: UIBlurEffect.init(style: style))
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}

struct Blur_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Image("bg", bundle: nil)
                .resizable()
                .ignoresSafeArea()
            Blur()
                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .debugBorder()
        }
    }
}
