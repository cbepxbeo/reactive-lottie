
import SwiftUI
import ReactiveLottie

struct ReactiveContentMode: View {
    
    @State var value: Bool = true
    
    var body: some View {
        VStack{
            Button("Toggle"){
                self.value.toggle()
            }
            LottieView(name: "example")
                .setContentMode(value ? .scaleToFill : .scaleAspectFit)
                .frame(width: 150, height: 300)
        }
    }
}

struct ReactiveContentMode_Previews: PreviewProvider {
    static var previews: some View {
        ReactiveContentMode()
    }
}
