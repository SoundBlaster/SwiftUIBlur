# SwiftUIBlur
Using UIKit blur effect in SwiftUI on iOS, tvOS and macOS Catalyst

This project and its git history demonstrate process of creating universal component for using UIVisualEffectView in SwiftUI environment as any other standard component of this great framework.

Usage:
```
.background(
    Blur()
        .effectStyle(.systemThickMaterial)
        .intensity(0.5)
)
```

Component has customizable propert `intensity` that can change the value of visual opacity and blur radius.

Screenshot of result: 

<img src="http://egormerkushev.ru/github/swiftuiblur/screen.jpg"/>

In demo used desing created by Ghulam Rasool 🚀 for Cuberto (Hi, guys, I love you!)
[UI Elements Design](https://dribbble.com/shots/14340346-UI-Elements-Design)
[Travel UI Elements](https://dribbble.com/shots/14593121-Travel-UI-Elements)

Part of these code is used in [Video Clock 4K](https://apple.co/33nQazJ)
