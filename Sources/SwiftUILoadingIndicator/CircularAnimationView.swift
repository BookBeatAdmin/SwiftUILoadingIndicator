import SwiftUI

public struct CircularAnimationView: View {
    
    init(
    animation: Animation,
    color: Color,
    offset: CGSize,
    scaleFrom: CGFloat,
    scaleTo: CGFloat,
    delay: Double,
    autoreverse: Bool) {
        self.animation = animation
        self.color = color
        self.offset = offset
        self.scaleFrom = scaleFrom
        self.scaleTo = scaleTo
        self.delay = delay
        self.autoreverse = autoreverse
    }
    
    @State private var moveAlongPath = false
    
    private let animation: Animation
    private let color: Color
    private let offset: CGSize
    private let scaleFrom: CGFloat
    private let scaleTo: CGFloat
    private let delay: Double
    private let autoreverse: Bool
    
    public var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 5, height: 5)
            .offset(offset)
            .rotationEffect(.degrees(moveAlongPath ? 360 : 0))
            .scaleEffect(moveAlongPath ? scaleFrom : scaleTo)
            .animation(
                animation
                    .repeatForever(autoreverses: autoreverse)
                    .delay(delay))
            .onAppear{
                self.moveAlongPath.toggle()
        }
    }
}

struct CircularAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CircularAnimationView(
            animation: .easeInOut(duration: 0.8),
            color: .green,
            offset: CGSize(width: 25, height: 0),
            scaleFrom: 0.3, scaleTo: 1,
            delay: 0,
            autoreverse: true)
    }
}
