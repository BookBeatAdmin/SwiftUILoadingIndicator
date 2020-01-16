import Foundation
import SwiftUI

public struct LoadingView: View {
    
    public init(_ loadingAnimation: LoadingAnimation = .dots) {
        animation = loadingAnimation
    }
    
    private let animation: LoadingAnimation
    
    public var body: some View {
        ZStack {
            Color(.black).opacity(0.8)
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
                LoadingView(.dots)
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
