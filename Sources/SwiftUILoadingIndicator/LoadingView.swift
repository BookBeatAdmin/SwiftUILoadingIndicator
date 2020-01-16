import Foundation
import SwiftUI

public struct LoadingView: View {
    
    public init(
        _ loadingAnimation: LoadingAnimation = .dots,
        backgroundColor: Color = Color(.black).opacity(0.8)) {
        animation = loadingAnimation
        self.backgroundColor = backgroundColor
    }
    
    private let animation: LoadingAnimation
    private let backgroundColor: Color
    
    public var body: some View {
        ZStack {
            backgroundColor
            animation
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            VStack {
                Text("default")
                LoadingView()
            }
            VStack {
                Text(".dots")
                LoadingView(.dots, backgroundColor: Color(.green).opacity(0.3))
            }
            VStack {
                Text(".moreDots")
                LoadingView(.moreDots)
            }
            VStack {
                Text(".symmetrical")
                LoadingView(.symmetrical)
            }
            VStack {
                Text(".symmetricalMoreDots")
                LoadingView(.symmetricalMoreDots)
            }
        }
    }
}
