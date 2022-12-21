
import SwiftUI
import ReactiveLottie

struct ReactiveSpeed: View {
    
    @State var value: Bool = true
    
    var body: some View {
        VStack{
            Button("Toggle"){
                self.value.toggle()
            }
            LottieView(name: "example")
                .setSpeed(value ? 1 : 0.5)
                .setContentMode(.scaleAspectFit)
        }
        .padding(.horizontal, 20)
        .frame(maxHeight: 300)
    }
}

struct ReactiveSpeed_Previews: PreviewProvider {
    static var previews: some View {
        ReactiveSpeed()
    }
}
