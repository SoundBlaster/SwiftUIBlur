//
//  Blur.swift
//  SwiftUIBlur
//
//  Created by Egor Merkushev on 22.11.2020.
//

import SwiftUI
import UIKit

class BlurIntensityView: UIView {
    public let effectView: UIVisualEffectView = UIVisualEffectView(effect: nil)
    private let animator: UIViewPropertyAnimator = UIViewPropertyAnimator(duration: 0.5, curve: .linear)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        applyMask()
        
        addSubview(effectView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        animator.startAnimation() // prevent crash while dealloc not started animator
        animator.stopAnimation(true)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        effectView.frame = bounds
        
        applyMask()
    }
    
    public func update(intensity: Float, style: UIBlurEffect.Style) {
        animator.addAnimations {
            self.effectView.effect = UIBlurEffect(style: style)
        }
        animator.fractionComplete = CGFloat(intensity)
    }
    
    private func applyMask() {
        let maskLayer = CAGradientLayer()
        maskLayer.frame = bounds;
        maskLayer.colors = [UIColor.white.cgColor, UIColor.white.withAlphaComponent(0.5).cgColor];
        maskLayer.startPoint = CGPoint(x: 0.5, y: 0.5);
        maskLayer.endPoint = CGPoint(x: 0.5, y: 1.0);
        effectView.layer.mask = maskLayer;
    }
}

struct Blur: UIViewRepresentable {
    var style: UIBlurEffect.Style = .light
    var intensity: Float = 1.0
    
    func makeUIView(context: Context) -> BlurIntensityView {
        BlurIntensityView()
    }
    
    func updateUIView(_ uiView: BlurIntensityView, context: Context) {
        uiView.update(intensity: intensity, style: style)
    }
}

extension Blur {
    func intensity(_ intensity: Float) -> Self {
        var updatedSelf = self
        updatedSelf.intensity = intensity
        return updatedSelf
    }
}

extension Blur {
    func effectStyle(_ style: UIBlurEffect.Style) -> Self {
        var copy = self
        copy.style = style
        return copy
    }
}

struct Blur_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Image("bg", bundle: nil)
                .resizable()
                .ignoresSafeArea()
            Blur()
                .intensity(0.5)
                .effectStyle(.systemMaterialDark)
                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .debugBorder()
        }
    }
}
