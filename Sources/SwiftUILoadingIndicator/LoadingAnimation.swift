import SwiftUI

public struct LoadingAnimation: View {
    
    public init(_ view: AnyView) {
        self.view = view
    }
    
    private let view: AnyView
    public var body: some View { view }
}

public extension LoadingAnimation {
    
    static var dots = LoadingAnimation(AnyView(
        CircularAnimationLoopView(animation: .easeInOut(duration: 1), count: 3)))
    
    static var moreDots = LoadingAnimation(AnyView(
        CircularAnimationLoopView(animation: .easeInOut(duration: 1.5), count: 6)))
    
    static var symmetrical = LoadingAnimation(AnyView(
        CircularAnimationLoopView(animation: .linear(duration: 1), delay: 0.25, count: 4)
    ))
    
    static var symmetricalMoreDots = LoadingAnimation(AnyView(
        CircularAnimationLoopView(animation: .linear(duration: 1), count: 10)
    ))
    
    static var waves = LoadingAnimation(AnyView(
        LineAnimationView(
            animation: .easeIn(duration: 0.4), count: 10, delay: 0.2, scaleTo: 0, verticalChange: 0)
    ))
    
    static var slowWaves = LoadingAnimation(AnyView(
        LineAnimationView(
            animation: .easeIn(duration: 0.8), count: 10, delay: 0.4, scaleTo: 0, verticalChange: 0)
    ))
    
    static var bubbles = LoadingAnimation(AnyView(
        LineAnimationView(
            animation: .easeInOut(duration: 0.5), count: 5, delay: 0.1, scaleTo: 0, verticalChange: 0)
    ))
    
    static var crazyBubbles = LoadingAnimation(AnyView(
        LineAnimationView(
            animation: .easeInOut(duration: 0.5), count: 5, delay: 0.1, scaleTo: 0, verticalChange: -40)
    ))
    
    static var verticalWaves = LoadingAnimation(AnyView(
        LineAnimationView(
            animation: .easeInOut(duration: 0.5), count: 10, delay: 0.2, scaleTo: 1, verticalChange: -60)
    ))
}


struct LoadingAnimation_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            VStack {
                Text("Dots")
                LoadingAnimation.dots
            }
            VStack {
                Text("MoreDots")
                LoadingAnimation.moreDots
            }
            VStack {
                Text("Summetrical")
                LoadingAnimation.symmetrical
            }
            VStack {
                Text("SymmetricalMoreDots")
                LoadingAnimation.symmetricalMoreDots
            }
            VStack {
                Text("ScalingDots")
                LoadingAnimation.scalingDots
            }
            VStack {
                Text("SlowWaves")
                LoadingAnimation.slowWaves
            }
            VStack {
                Text("Waves")
                LoadingAnimation.waves
            }
            VStack {
                Text("Bubbles")
                LoadingAnimation.bubbles
            }
            VStack {
                Text("CrazyBubbles")
                LoadingAnimation.crazyBubbles
            }
            VStack {
                Text("VerticalWaves")
                LoadingAnimation.verticalWaves
            }
        }
    }
}
