import SwiftUI

public struct LineAnimationView: View {
    
    public init(
        animation: Animation,
        color: Color = .gray,
        count: Int,
        delay: Double,
        scaleTo: CGFloat,
        verticalChange: CGFloat) {
        self.animation = animation
        self.color = color
        self.count = count
        self.delay = delay
        self.scaleTo = scaleTo
        self.verticalChange = verticalChange
    }
    
    private let animation: Animation
    private let color: Color
    private let count: Int
    private let delay: Double
    private let scaleTo: CGFloat
    private let verticalChange: CGFloat
    
    public var body: some View {
        HStack {
            ForEach((0 ..< count), id: \.self) { index in
                DotAnimationView(
                    animation: self.animation,
                    color: self.color,
                    delay: self.delay * Double(index),
                    scaleTo: self.scaleTo,
                    verticalChange: self.verticalChange,
                    autoreverse: true)
            }
        }
    }
    
    struct LineAnimationView_Previews: PreviewProvider {
        static var previews: some View {
            Group {
                LineAnimationView(
                    animation: .easeIn(duration: 0.8),
                    color: .green, count: 10, delay: 0.4, scaleTo: 0, verticalChange: 0)
                LineAnimationView(
                    animation: .easeIn(duration: 0.4), count: 10, delay: 0.2, scaleTo: 0, verticalChange: 0)
                LineAnimationView(
                    animation: .easeInOut(duration: 0.5), count: 5, delay: 0.1, scaleTo: 0, verticalChange: 0)
                LineAnimationView(
                    animation: .easeInOut(duration: 0.5), count: 10, delay: 0.2, scaleTo: 1, verticalChange: -60)
            }
        }
    }
}
