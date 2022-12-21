import SwiftUI
import ReactiveLottie

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Reactive content mode") {
                    ReactiveContentMode()
                }
                NavigationLink("Reactive speed") {
                    ReactiveSpeed()
                }
                NavigationLink("Reactive loop mode") {
                    ReactiveLoopMode()
                }
                NavigationLink("Control") {
                    Control()
                }
                NavigationLink("Combo") {
                    Combo()
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
