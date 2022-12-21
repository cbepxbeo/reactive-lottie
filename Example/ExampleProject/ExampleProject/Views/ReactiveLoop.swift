
import SwiftUI
import ReactiveLottie

struct ReactiveLoopMode: View {
    
    @State var value: Bool = true
    
    var body: some View {
        VStack{
            Button("Toggle"){
                self.value.toggle()
            }
            LottieView(name: "example")
                .setLoopMode(value ? .loop : .playOnce)
                .setContentMode(.scaleAspectFit)
        }
        .padding(.horizontal, 20)
        .frame(maxHeight: 300)
    }
}

struct ReactiveLoopMode_Previews: PreviewProvider {
    static var previews: some View {
        ReactiveLoopMode()
    }
}
