
import SwiftUI
import ReactiveLottie

struct Control: View {
    
    @State var state: LVAnimationState = .play
    
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
            }
            LottieView(name: "example", state: $state)
                .setLoopMode(.loop)
                .setContentMode(.scaleAspectFit)
                .setSpeed(0.4)
        }
        .padding(.horizontal, 20)
        .frame(maxHeight: 300)
    }
}

struct Control_Previews: PreviewProvider {
    static var previews: some View {
        Control()
    }
}
