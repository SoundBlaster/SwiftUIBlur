//
//  DebugBorder.swift
//  SwiftUIBlur
//
//  Created by Egor Merkushev on 22.11.2020.
//

// https://www.swiftbysundell.com/articles/building-swiftui-debugging-utilities/

import SwiftUI

extension View {
    func debugModifier<T: View>(_ modifier: (Self) -> T) -> some View {
        #if DEBUG
        return modifier(self)
        #else
        return self
        #endif
    }
}

struct DebugBorder: ViewModifier {
    let color: Color
    
    func body(content: Content) -> some View {
        content.overlay(Rectangle().stroke(color))
    }
}

extension View {
    func debugBorder(color: Color = .blue) -> some View {
        debugModifier {
            $0.modifier(DebugBorder(color: color))
        }
    }
}

struct DebugBorder_Previews: PreviewProvider {
    static var previews: some View {
        Card()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .debugBorder(color: .red)
    }
}
