
import SwiftUI
import ReactiveLottie

struct Combo: View {
    
    @State var state: LVAnimationState = .play
    @State var value: Bool = true
    
    var body: some View {
        VStack{
            HStack{
                Button("Play"){
                    self.state = .play
                }
                Button("Pause"){
                    self.state = .pause
                }
                Button("Stop"){
                    self.state = .stop
                }
                Button("Toggle"){
                    self.value.toggle()
                }
            }
            LottieView(name: "example", state: $state)
                .setLoopMode(value ? .loop : .playOnce)
                .setContentMode(value ? .scaleToFill : .scaleAspectFit)
                .setSpeed(value ? 1 : 0.2)
        }
        .padding(.horizontal, 20)
        .frame(maxHeight: 300)
    }
}

struct Combo_Previews: PreviewProvider {
    static var previews: some View {
        Combo()
    }
}
