# Rective Lottie animations for SwiftUI. 

Use lottery animation in `SwiftUI`, just like you always use `SwiftUI`.  

```swift
import ReactiveLottie

struct RootView: View {
    var body: some View {
         LottieView(name: "example")
            .setSpeed(0.2)
    }
}

```

Use binding to manage state.  

```swift
import ReactiveLottie

struct RootView: View {

    @State var state: LVAnimationState = .play //.stop, .pause

    var body: some View {
         LottieView(name: "example", state: $state)
            .setLoopMode(.loop)
    }
}

```

Change animation parameters reactively.  

```swift
import ReactiveLottie

struct RootView: View {

    @State var state: LVAnimationState = .play //.stop, .pause
    @State var value: Bool = true

    var body: some View {
         LottieView(name: "example", state: $state)
            .setSpeed(value ? 1 : 0.2)
    }
}

```

<b>See example for reference.</b>

## Additional. 

Sample file taken from [lottiefiles.com](https://lottiefiles.com/130724-loading-webpage)  

---

The package is based on [lottie-ios](https://github.com/airbnb/lottie-ios). 

Package does not depend on it, and you will not get conflicts when using it.  
The logical part, types and extensions have been modified to be compatible with `SwiftUI`.  

