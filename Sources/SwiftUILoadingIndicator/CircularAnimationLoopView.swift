import SwiftUI

public struct CircularAnimationLoopView: View {
    
    public init(
        animation: Animation,
        color: Color = .gray,
        delay: Double = 0.1,
        count: Int) {
        self.animation = animation
        self.color = color
        self.delay = delay
        self.count = count
    }
    
    private let animation: Animation
    private let color: Color
    private let delay: Double
    private let count: Int
    
    public var body: some View {
        ZStack {
            ForEach((0 ..< count), id: \.self) { index in
                CircularAnimationView(
                    animation: self.animation,
                    color: self.color,
                    offset: CGSize(width: 0, height: -25),
                    scaleFrom: 1, scaleTo: 1,
                    delay: self.delay * Double(index),
                    autoreverse: false)
            }
        }
    }
}

struct CirclePathAnimation_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CircularAnimationLoopView(animation: Animation.easeInOut(duration: 1), delay: 0.1, count: 3)
            CircularAnimationLoopView(animation: Animation.easeInOut(duration: 1.5), delay: 0.2, count: 5)
            CircularAnimationLoopView(animation: Animation.easeInOut(duration: 1.5), delay: 0.3, count: 5)
        }
    }
}
