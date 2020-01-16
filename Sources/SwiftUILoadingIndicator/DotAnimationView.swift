import SwiftUI

public struct DotAnimationView: View {
    
    public init(
        animation: Animation,
        color: Color = .gray,
        delay: Double = 0.0,
        scaleTo: CGFloat = 1.0,
        verticalChange: CGFloat,
        autoreverse: Bool) {
        self.animation = animation
        self.color = color
        self.delay = delay
        self.scaleTo = scaleTo
        self.verticalChange = verticalChange
        self.autoreverse = autoreverse
    }
    
    @State private var animate: Bool = false
    
    private let animation: Animation
    private let color: Color
    private let delay: Double
    private let scaleTo: CGFloat
    private let verticalChange: CGFloat
    private let autoreverse: Bool
    
    public var body: some View {
        Circle()
            .foregroundColor(color)
            .scaleEffect(animate ? scaleTo : 1)
            .offset(y: animate ? verticalChange : 0)
            .animation(
                      animation
                          .repeatForever(autoreverses: autoreverse)
                          .delay(delay))
            .onAppear {
                self.animate = true
        }
    }
}

struct LineAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        DotAnimationView(
            animation: .linear(duration: 1),
            verticalChange: -50,
            autoreverse: true)
    }
}
