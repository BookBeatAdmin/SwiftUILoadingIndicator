import SwiftUI

public extension LoadingAnimation {
    
    static var scalingDots =
        LoadingAnimation(AnyView(
            ZStack {
                CircularAnimationView(
                    animation: .easeInOut(duration: 0.8),
                    color: .pink,
                    offset: CGSize(width: 25, height: 0),
                    scaleFrom: 0.3, scaleTo: 1, delay: 0,
                    autoreverse: true)
                CircularAnimationView(
                    animation: .easeInOut(duration: 0.8),
                    color: .green,
                    offset: CGSize(width: -25, height: 0),
                    scaleFrom: 0.3, scaleTo: 1, delay: 0,
                    autoreverse: true)
                CircularAnimationView(
                    animation: .easeInOut(duration: 0.8),
                    color: .orange,
                    offset: CGSize(width: 0, height: 25),
                    scaleFrom: 0.3, scaleTo: 1, delay: 0,
                    autoreverse: true)
                CircularAnimationView(
                    animation: .easeInOut(duration: 0.8),
                    color: .purple,
                    offset: CGSize(width: 0, height: -25),
                    scaleFrom: 0.3, scaleTo: 1, delay: 0,
                    autoreverse: true)
        }))
}


struct LoadingAnimation_ScalindDots_Previews: PreviewProvider {
    
    static var previews: some View {
        LoadingAnimation.scalingDots
    }
}
